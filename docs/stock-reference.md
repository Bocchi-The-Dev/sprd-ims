# Stock IS8 (X6525) reference - how com.spreadtrum.ims actually runs

All facts below verified live on the stock ROM (Android 13, ums9230, user build),
via `adb root` + `adb shell` + extracted files. The two donor APKs are
**byte-identical** to what is installed on the device (sha256 match), so the
analysis in `docs/` applies to the real deployment.

## Installed layout
| package | path |
|---|---|
| `com.spreadtrum.ims` | `/system_ext/priv-app/ims/ims.apk` |
| `com.android.imsserviceentitlement` | `/product/priv-app/ImsServiceEntitlement/ImsServiceEntitlement.apk` |
| `com.unisoc.phone` (UniTelephony) | `/system_ext/priv-app/UniTelephony/UniTelephony.apk` |

`com.spreadtrum.ims` runs as uid `radio` (sharedUserId android.uid.phone).
Process: `com.spreadtrum.ims` (pid 2654 on the capture).

## Registration on the framework
```
121 ims_ex     [com.android.ims.internal.IImsServiceEx]
122 ims_ut_ex  [com.android.ims.internal.IImsUtEx]
```
exactly the two services `ImsAdapterService.onCreate` allocates. The stock OS
activates both gates, so `onCreate` proceeds and the app works.

## THE GATES (docs/gates.md) - finally resolved
Framework resource ids used by the app:
```
0x1110108 = bool/config_device_volte_available
0x111010a = bool/config_device_wfc_ims_available
```
Base framework-res.apk ships both **false**. They are turned on by a static RRO:

    /product/overlay/framework-res__auto_generated_rro_product.apk
      config_device_volte_available     = true
      config_device_vt_available        = true
      config_device_wfc_ims_available   = true

Also relevant, `/vendor/overlay/unisoc_overlay_frameworks_res.apk`:
    (does NOT set volte/wfc - only biometrics + default listener packages)

Additionally the vendor props trigger VoLTE/VoWIFI:
```
persist.vendor.sys.volte.enable        = true
persist.vendor.sys.single.imsstack     = true
persist.vendor.radio.imsua.setting     = 1
gsm.sys.volte.state                     = 1,0
gsm.sys.vowifi.state                    = 0,0
persist.sys.wfc.supp_dual_sim           = true
persist.sys.vowifi.whitelist            (unset; vowifi.rc derives persist.dbg.wfc_avail_ovr)
```
and `/vendor/etc/init/vowifi.rc`:
```
on property:persist.sys.vowifi.whitelist=true   -> setprop persist.dbg.wfc_avail_ovr 1
on property:persist.sys.vowifi.lab.sim=true     -> setprop persist.dbg.wfc_avail_ovr 1
on property:persist.sys.vowifi.lab.sim=false && persist.sys.vowifi.whitelist=false
                                               -> setprop persist.dbg.wfc_avail_ovr 0
```
=> For VoWIFI on the GSI: `persist.sys.vowifi.whitelist=true` OR
`persist.sys.vowifi.lab.sim=true` sets `persist.dbg.wfc_avail_ovr=1`, which is
GATE 2's second condition.

## Privapp permissions
`/system_ext/etc/permissions/com.spreadtrum.ims.xml`:
    READ_PRIVILEGED_PHONE_STATE
`/product/etc/permissions/com.android.imsserviceentitlement.xml`:
    READ_PRIVILEGED_PHONE_STATE, MODIFY_PHONE_STATE

`com.spreadtrum.ims.permisson.IMS_COMMON` / `SRMI_COMMON` and
`com.spreadtrum.vowifi.permission.ACCESS_CONFIGURATION` are **declared by the
app itself** with `protection=signature`, so no external declarer is needed.

## IMS Radio HAL - present and working
    vendor.unisoc.hardware.radio.ims.IImsRadio/slot1   (found)
    vendor.unisoc.hardware.radio.ims.IImsRadio/slot2   (found)
Served by `/vendor/bin/hw/urild` (`service vendor.ril-daemon`, uid radio),
declared in `/vendor/etc/init/unisoc.rild.rc`.
HIDL `vendor.sprd.hardware.radio.ims@1.1` is NOT registered - the AIDL path is
the live one, matching `ImsRadioInterface`'s preference order.

AIDL schema hash in the device HAL = `f53a892d42fdfb0cbd0c5a33c747541660d182d8`,
identical to the hash in the APK's `IImsRadio.so` stubs. **No AIDL drift.**

Also live: `ims_bridged` (VoWIFI bridge into the modem), kernel threads
`imsbr-ctrl[5-3]`, `imsbr-data[5-2]`.

## CRITICAL: com.android.ims.internal.IVoWifi* comes from a BOOTCLASSPATH jar
`/system/framework/unisoc_ims_common.jar` is on the system bootclasspath
(`/system/etc/classpaths/bootclasspath.pb`), NOT part of the APK. It provides:
```
IVoWifiSecurity   IVoWifiSecurityCallback
IVoWifiCall       IVoWifiCallCallback
IVoWifiRegister   IVoWifiRegisterCallback
IVoWifiSms        IVoWifiSmsCallback
IVoWifiUT         IVoWifiUTCallback
IVoWiFiAttachCallback  IVoWiFiAvailabilityCallback
IImsDozeManager   IImsDozeObserver   IImsEventListener
IImsPdnStateListener  IImsRegisterListener
IImsServiceEx     IImsServiceListenerEx
IImsUtEx          IImsUtListenerEx
IIwlanAttachActionListener  IIwlanMmsActionListener
IN3AMVideoStateNoitfy
ImsManagerEx      ImsSrvccCallInfo   GbaAuthResult
```
35 distinct `com.android.ims.internal.*` symbols are referenced by the APK; this
jar supplies the Unisoc-specific half, AOSP's telephony-common.jar supplies the
rest (`IImsCallSession`, `IImsEcbm`, `IImsUt`, ...).

**LOS 20 GSI will not contain `unisoc_ims_common.jar`.** If the APK is flashed
as-is, the first touch of any VOWIFI class throws `NoClassDefFoundError`.
=> the jar must either be pushed as a bootclasspath jar on the GSI, OR its dex
   merged into the APK (`smali_classes2/`).

## VoWIFI: com.spreadtrum.vowifi does NOT exist on stock
Not installed, and no `*vowifi*` file anywhere in /system, /system_ext,
/product or /vendor except `/vendor/etc/init/vowifi.rc`.
Consequences (from static analysis):
- `VoWifiSecurityManager` / `VoWifiSmsManager` bind
  `com.spreadtrum.vowifi/.service.SecurityService` etc. by **explicit
  ComponentName**, and the `bindService` result is never checked.
- With the package absent, `mServiceBinder` stays null and every pending action
  fails silently via `attachFailed(...)`.
- Therefore VoWIFI **calls/SMS** are non-functional even on stock.
- `gsm.sys.vowifi.state = 0,0` on stock confirms WFC is not provisioned.
=> `com.spreadtrum.vowifi` must be ported from another Unisoc Android 13 ROM
   (or written by us) before VoWIFI calling can work. Registration may still
   work because `VoWifiRegisterManager` never binds it.

## Stock state at capture time
`dumpsys phone` shows both MMTEL features `state=UNAVAILABLE`,
`capabilities={ EMERGENCY_OVER_MMTEL }` - i.e. VoLTE is enabled but not
registered (no VoLTE SIM in the test device). This is the baseline to compare
against after flashing the GSI.

## Extracted files
```
device-stock/
  device-ims.apk                  (== source-apks/ImsApp.apk, sha256 match)
  device-entitlement.apk          (== source-apks/ImsServiceEntitlement.apk)
  hal/urild                       radio HAL binary
  hal/lib64/vendor.unisoc.hardware.radio.ims-V1-ndk.so   AIDL IMS HAL impl
  hal/lib32/vendor.unisoc.hardware.radio.ims-V1-ndk.so   32-bit sibling
  hal/lib64/librilcore.so, librilutils.so, vendor.unisoc.hardware.radio-V1-ndk.so
  hal/init/                       full /vendor/etc/init
  config/unisoc.rild.rc           service vendor.ril-daemon
  config/vowifi.rc                VoWIFI enable prop mapping
  config/imsUserAgent.xml
  framework/unisoc_ims_common.jar BOOTCLASSPATH jar (see above)
  framework-unisoc-ims/           apktool decode of that jar
  overlays/unisoc_overlay_frameworks_res.apk
  overlays/unisoc_go_overlay_frameworks_res.apk
  overlays-product/framework-res__auto_generated_rro_product.apk   <-- sets volte+wfc true
  overlays-product/FrameworkResOverlay.apk, framework-res__auto_generated_rro_product.apk, ...
  perms/com.spreadtrum.ims.xml, com.android.imsserviceentitlement.xml,
        android.hardware.telephony.ims.xml
  sepolicy/system_ext_{file_contexts,seapp_contexts,mac_permissions.xml}
```

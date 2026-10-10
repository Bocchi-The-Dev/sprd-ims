# Remaining work for VoLTE + VoWIFI

Ordered by "will it boot / will it work", not by effort.

## 1. Flashing path (must decide before anything is flashed)
The three target partitions matter for the boot flow:
- `/system/priv-app/`   - has the bionic framework, privileged perms honoured
- `/system_ext/priv-app/` - same, but system_ext is not consulted by the
  framework when resolving `android.telephony.ims.ImsService`? It IS consulted.
- `/system/app/`        - non-privileged, `READ_PRIVILEGED_PHONE_STATE` fails

`sharedUserId="android.uid.phone"` + `coreApp="true"` + `READ_PRIVILEGED_PHONE_STATE`
=> **`/system/priv-app/`**. Same directory the stock IS8 would use.

Concrete: `system.img -> /system/priv-app/ImsApp/ImsApp.apk` (package-named dir)
and `system_ext -> /system_ext/priv-app/ImsServiceEntitlement/...` (or both in
system/priv-app to keep one image to flash).

Also needed:
- `privapp-permissions*.xml` allowlist entries (no wholesale suppression)
- sepolicy `file_contexts` for the new dirs, `seapp_contexts` if needed
- apk **signature must match the GSI's platform key** (docs/signing.md)

## 2. The six intent filters on ONE service (design flaw for GSI)
`ImsAdapterService` declares, and `onBind` returns `mImsServiceController` for
ALL of:
```
android.telephony.ims.ImsService                          <- the one we want
android.telephony.NetworkService
android.telephony.data.QualifiedNetworksService   (x2)
android.telephony.data.DataService               (x2)
android.telephony.gba.GbaService
com.android.ims.internal.IN3AMVideoStateNoitfy
```
`onBind` ignores the action and always returns the ImsService controller. So if
the LOS telephony also binds `android.telephony.data.DataService` to this package
(highly likely on a GSI with the stock Unisoc radio), it gets an
`IImsServiceController` where it expects an `IImsDataService` ->
`ClassCastException` in Telephony, or at minimum a silently broken data stack.

**Fix**: make `onBind` action-aware. Return the ImsService controller ONLY for
`android.telephony.ims.ImsService`, and drop the `ims_ex`/`ims_ut_ex`
`ServiceManager.addService` side effects unless the action is a Unisoc-specific
one. Same for `onCreate` (currently unconditional).

## 3. Missing external dependency: com.spreadtrum.vowifi
`ServiceManager` binds by explicit `ComponentName`:
- `com.spreadtrum.vowifi/.service.SecurityService` (VoWiFi IPSec/GBA)
- `com.spreadtrum.vowifi.sec/.sec.service.CallService`
- `com.spreadtrum.vowifi.sec/.sec.service.RegisterService`
- `com.spreadtrum.vowifi/.service.SmsService`
- content provider `content://com.spreadtrum.vowifi.accountsettings/{security,register,call,message,ut}`

`bindService()` return value is **not checked**, so a missing package causes:
- `bindService` returns false -> `ServiceConnection` never fires,
- `processPendingAction()` runs with `mServiceBinder == null` and bails out
  (returns without error),
- every VoWiFi request silently fails (`attachFailed`, async).

So VoWIFI **calls** will not work without that package. Registration may still
work if it doesn't need SecurityService. Need to check which paths actually call
into it. If `com.spreadtrum.vowifi` is not part of the donor set, VoWIFI is
signing/logging in only; **VoWIFI calling will not work**.

## 4. HAL presence (outside the APK)
`ImsRadioInterface` needs, in order:
1. AIDL `vendor.unisoc.hardware.radio.ims.IImsRadio/slotN` (schema hash
   `f53a892d42fdfb0cbd0c5a33c747541660d182d8`)
2. HIDL fallback `vendor.sprd.hardware.radio.ims@1.1::IImsRadio/slotN`
3. HIDL `1.0` fallback

If none of those exist in the IS8 vendor + GSI setup, `mImsRadioServiceProxy`
stays empty and EVERY RIL IMS request silently no-ops. Nothing in the app can
patch around this. Verify with:
```
adb shell lshal | grep -i -E 'ims|radio'
adb shell dumpsys -l | grep -i ims
```

## 5. Carrier/device config overlays (framework side)
The app-side patch stops the service from self-disabling. It does NOT make the
telephony framework decide to use IMS. Still required on the GSI:
- `persist.dbg.volte_avail_ovr=1`
- `persist.dbg.vt_avail_ovr=1`
- `persist.dbg.wfc_avail_ovr=1`
- `persist.vendor.sys.volte.enable=true`
- `persist.vendor.sys.single.imsstack=true`
- `config_device_volte_available=true`
- `config_device_vt_available=true`
- `config_device_wfc_ims_enabled=true`
- carrier config `carrier_volte_available_bool` / `carrier_wfc_ims_available_bool`
- IMS APN present (`ims`, `ia` protocols) for the active SIM

## 6. IMS entitlement app
`com.android.imsserviceentitlement` is a Google/Carrier entitlement UI app (SMS
like Google Messages, uses material + firebase). It does NOT enable IMS; it's the
settings UI for `ims.entitlement`. It must still install cleanly as priv-app or
Dexopt warnings will spam logcat, but it is not functionally required.

## Suggested order
1. Decide flash path (system vs system_ext) - `[need decision]`
2. Sign with the real platform key
3. Flash, boot, collect
   `adb logcat -b all -d > boot.txt`
   `adb shell dumpsys telephony.registry | grep -i ims`
   `adb shell dumpsys phone | grep -i -E 'volte|wfc|ims'`
   `adb shell lshal | grep -i ims`
4. Then decide on #2 (onBind) and #3 (vowifi package) based on those logs.

# VoLTE plan (VoWIFI deferred)

Decision (2026-10-10): VoWIFI is out of scope.
`com.spreadtrum.vowifi` is absent from the stock IS8 ROM, no WFC package ships,
and `gsm.sys.vowifi.state=0,0` on stock. The hardware/ROM does not provision
WFC, so porting it is chasing a feature the stock ROM does not have.
If it turns out the modem can do S2b, this decision can be revisited, but it is
not blockng the VoLTE path.

## Why VoLTE is now tractable
Stock enables VoLTE entirely through an **RRO overlay**:
`/product/overlay/framework-res__auto_generated_rro_product.apk`
```
config_device_volte_available   = true
config_device_vt_available      = true
config_device_wfc_ims_available = true
```
That overlay was extracted into `device-stock/overlays-product/`. On the LOS 20
GSI those framework booleans are false, so the telephony framework never asks
IMS to register. Restoring this overlay is the cleanest fix, because it works
through the same mechanism the vendor used.

## Two ways to enable, either is sufficient
| route | mechanism | notes |
|---|---|---|
| A (props) | `persist.vendor.sys.volte.enable=true` | also GATE 2 branch 1 |
| B (framework res) | port the RRO overlay above | matches stock exactly |
| C (smali) | force `isImsEnabledBySystemProperties` -> true | already patched, belt-and-braces |

Any one of A/B/C opens GATE 1. Use A + B + C together.

## Required changes to the flashable image
1. `com.spreadtrum.ims` apk -> `/system/priv-app/ims/ims.apk` (priv-app, signed with the GSI platform key)
   - keep package name `com.spreadtrum.ims`; dir name `ims` matches stock
2. `/system_ext/etc/permissions/com.spreadtrum.ims.xml` -> the privapp allowlist (only `READ_PRIVILEGED_PHONE_STATE`)
3. the RRO overlay from route B, installed as a static RRO in `/product/overlay/`
4. `/system/etc/classpaths/` bootclasspath: add
   `/system/framework/unisoc_ims_common.jar` (extracted in `device-stock/framework/`)
   **without this the app throws NoClassDefFoundError on the IVoWifi* classes**
5. props:
   ```
   persist.vendor.sys.volte.enable=true
   persist.vendor.radio.imsua.setting=1
   ```
6. `com.android.imsserviceentitlement` -> `/product/priv-app/ImsServiceEntitlement/` + allowlist
   (non-functional for VoLTE, but must install cleanly)
7. `vendor.unisoc.hardware.radio.ims.IImsRadio/slot1,slot2` served by `urild`
   - comes from the stock IS8 **vendor** image; the GSI must keep IS8 vendor
   - verified present and hash-matching on stock

## SELinux notes
- apk context on stock: `u:object_r:system_file:s0` (plain system_file, no
  special domain) because `sharedUserId=android.uid.phone` puts it in the
  `radio` domain via seapp_contexts which maps `uid=phone` -> radio domain.
  Our system_ext_seapp_contexts on stock only had the silead fingerprint rule,
  so the phone->radio mapping comes from AOSP's plat_seapp_contexts. LOS 20 has
  the same rule, so nothing extra is needed.
- the app is NOT a HAL, so no new vendor domain is required.

## Verification checklist after flashing
```
adb shell dumpsys phone | grep -iE 'volte|wfc|ims' 
adb shell dumpsys telephony.registry | grep -i ims
adb logcat -b all -d | grep -iE 'ImsAdapterService|ImsConfigImpl|ImsRadio'
adb shell service list | grep -E 'ims_ex|ims_ut_ex'
adb shell getprop | grep -E 'volte|wfc|vowifi'
```
Success = `ims_ex` + `ims_ut_ex` allocated, MmTelFeature state AVAILABLE with
CAPABILITY_TYPE_VOICE, `gsm.sys.volte.state` becomes `1`.

## What we must NOT break
- `ImsAdapterService` declares 6 intent filters (see docs/remaining-work.md).
  On stock the framework only seemed to bind `ims_ex`/`ims_ut_ex` + the
  ImsService action. On LOS 20 the telephony framework WILL also try to bind
  `android.telephony.data.DataService` and `QualifiedNetworksService` to it.
  If that happens it gets an `IImsServiceController` where `IImsDataService` is
  expected -> likely a ClassCastException crash loop in the phone process.
  => Keep the `onBind` action-filter fix in the plan. It is the one change that
  is mandatory for the GSI even though stock never hits it.

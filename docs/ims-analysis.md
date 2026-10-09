# sprd-ims analysis - VoLTE / VoWIFI on LOS20 GSI (TD, ums9230/T606)

## Context
- Target: LineageOS 20 GSI TD from Andyyan, running on Infinix Smart 8 (X6525, ums9230).
- Donor IMS stack: Unisoc/Spreadtrum Android 13 (SDK 33) ims apps.
- Goal: VoLTE (persist.vendor.sys.volte.enable) + VoWIFI (config_device_wfc_ims_enabled path).

## The gatekeeper: ImsAdapterService.onCreate / onBind
`sprd-ims/smali/com/spreadtrum/ims/ImsAdapterService.smali`

```smali
onCreate:
    if (isImsEnabledBySystemProperties(ctx) == false
      && isVoWiFiEnabledByBoard(ctx) == false) {
        logw("Could Not Start Ims Service because volte disabled by system properties!")
        return;   # <-- never starts, no ims_ex / ims_ut_ex services added
    }
```

Same guard in `onBind` returns null binder -> `android.telephony.ims.ImsService` is
unbindable -> telephony framework has no ImsService -> no VoLTE, no VoWIFI.

### isImsEnabledBySystemProperties
```smali
# ImsConfigImpl.smali
if (SystemProperties.getBoolean("persist.vendor.sys.volte.enable", false)) return true;
if (SystemProperties.getInt("persist.dbg.wfc_avail_ovr", 0) == 1) return true;
return Resources.getBoolean(0x1110108);   # framework res (config_device_volte_available equiv)
```
### isVoWiFiEnabledByBoard
```smali
return Resources.getBoolean(0x111010a);   # framework res (config_device_wfc_ims_enabled equiv)
```

## Root cause on the GSI
`0x1110108` / `0x111010a` are **framework-res** booleans. They are not shipped by
this APK (its public.xml only declares 0x7f.. ids), so they resolve against
`android` framework-resources / overlay on the device.

On stock Unisoc these overlays give `true`. On Andyyan's LOS20 GSI + TD they are
undefined/false, and `persist.vendor.sys.volte.enable` is not set (it is a
vendor prop; LOS20 GSI does not ship Unisoc's `system.prop`).

=> Both branches false => IMS service never binds.

## Two independent fixes
### A. prop path (safest, no APK change)
Set in `system/build.prop` (or vendor) of the flashed image:
```
persist.vendor.sys.volte.enable=true
persist.dbg.wfc_avail_ovr=1
```
plus the standard GSI VoLTE/VoWIFI enablers (`persist.dbg.volte_avail_ovr=1`,
`persist.dbg.vt_avail_ovr=1`, `persist.dbg.wfc_avail_ovr=1`).
Caveat: these props only affect the *check above*; VoLTE audio/vowifi data still
need radio HAL support (vendor Radio HAL with IMS ext, com.spreadtrum.ims
permissions sepolicy, and ImsServiceManifest).

### B. APK patch (what this repo is for)
Patch `isImsEnabledBySystemProperties` / `isVoWiFiEnabledByBoard` to return `true`
by default, so the service always starts regardless of props/overlays. Then fix
whatever surfaces next (registers against Radio HAL, ims_ex service, vowifi PDN).

## Services registered by ImsAdapterService
- `ims_ex`     (IImsServiceEx)  -> com.android.ims internal extension
- `ims_ut_ex`  (IImsUtEx)       -> UT extension
- `android.telephony.ims.ImsService` (bind action) -> mImsServiceController

## Shared UID / permissions
- `android:sharedUserId="android.uid.phone"`, `coreApp="true"` -> must be a
  **system/priv-app** in system.img (`/system/priv-app/...`), NOT an OTA data app.
- needs `com.spreadtrum.ims.permisson.IMS_COMMON`, `com.spreadtrum.vowifi.permission.ACCESS_CONFIGURATION`
  (selinux + permission allowlists in framework-res + privapp-permissions).

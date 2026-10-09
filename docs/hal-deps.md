# HAL + service dependencies discovered by static analysis

## Radio HAL: two paths, tried in order
`ImsRadioInterface.getRadioServiceProxy()`:

### 1) AIDL (preferred, "version 2.0")
```
ServiceManager.waitForDeclaredService(
    "vendor.unisoc.hardware.radio.ims.IImsRadio" + "/" + HIDL_SERVICE_NAME[phoneId])
HIDL_SERVICE_NAME = {"slot1","slot2","slot3"}
```
Interface: `vendor.unisoc.hardware.radio.ims.IImsRadio`
Schema hash: `f53a892d42fdfb0cbd0c5a33c747541660d182d8`
(AIDL hash mismatch => `asInterface` gets a proxy that will fail every call, or
waitForDeclaredService returns null.)

### 2) HIDL (fallback, "version 1.1")
```
vendor.sprd.hardware.radio.ims@1.1::IImsRadio.getService("slotN", false)
```
strategy fallback also has a 1.0 path.

### 3) IMSAIDLService flag
`IMS_AIDL_SERVICE = 0x1` path.

## Registered binder services on successful onCreate
- `ims_ex`     -> `com.android.ims.internal.IImsServiceEx`
- `ims_ut_ex`  -> `com.android.ims.internal.IImsUtEx`

## IMS service binding
- intent action `android.telephony.ims.ImsService`
- returns `mImsServiceController`

## Standalone services declared in manifest (all vendor HAL-backed, no native lib in APK)
| service | notes |
|---|---|
| `.ImsAdapterService` | the gate; exported, action `android.telephony.ims.ImsService` |
| `.IwlanNetworkService` | needs `Landroid/os/SystemProperties;->get(...)` on iwlan props |
| `.IwlanQualifiedNetworksService` | same |
| `.IwlanDataService` | same |
| `.gba.UnisocGbaService` | GBA (auth for VoWIFI) |
| `.n3am.vowifi.WFCStateMonitorService` | reads `gsm.sys.vowifi.state`, `persist.dbg.wfc_avail_ovr` |
| `.n3am.vowifi.PhoneStateMonitor` | |
| `.n3am.vowifi.RequestResolver` | |
| `.n3am.vowifi.VideoStateNotifyService` | |
| `com.spreadtrum.ims.n3am.vowifi.WFCStateMonitorService` | |
| `.ImsDozeManagerService` | doze (needs `android.permission.DEVICE_POWER` / system uid) |
| `com.spreadtrum.vowifi.service.SecurityService` | external component, referenced by name |

## Permissions this APK requires to be granted
- `android.permission.READ_PRIVILEGED_PHONE_STATE` (privileged only)
- `com.spreadtrum.ims.permisson.IMS_COMMON`
- `com.spreadtrum.ims.permisson.SRMI_COMMON`
- `com.spreadtrum.vowifi.permission.ACCESS_CONFIGURATION`
- `android.permission.MODIFY_AUDIO_ROUTING`-class (via sharedUserId phone)
- `com.spreadtrum.vowifi.service.SecurityService` needs to be provided by another
  Unisoc package (not in our set)

`sharedUserId="android.uid.phone"`, `coreApp="true"` -> must be priv-app, and
keeps a stable UID so `ims_ex`/`ims_ut_ex` calls from framework match.

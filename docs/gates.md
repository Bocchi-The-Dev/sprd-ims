# Complete gate list (static analysis)

## GATE 1 (hard blocker) - ImsAdapterService.onCreate / onBind
File: `sprd-ims/smali/com/spreadtrum/ims/ImsAdapterService.smali` (lines 442-497)
```smali
onCreate:
    isImsEnabledBySystemProperties == false && isVoWiFiEnabledByBoard == false
        -> logw("Could Not Start Ims Service because volte disabled by system properties!")
        -> return-void   # ims_ex + ims_ut_ex NEVER registered
onBind:
    same condition -> return null binder  # ImsService unbindable
```
Determines: whether `android.telephony.ims.ImsService` is bindable at all.

## GATE 2 - ImsConfigImpl.isImsEnabledBySystemProperties (line ~630)
```smali
true if any:
  SystemProperties.getBoolean("persist.vendor.sys.volte.enable", false)
  SystemProperties.getInt("persist.dbg.wfc_avail_ovr", 0) == 1
  Resources.getBoolean(0x1110108)   # framework res
```

## GATE 3 - ImsConfigImpl.isVoWiFiEnabledByBoard (line ~639)
```smali
Resources.getBoolean(0x111010a)   # framework res
```

## GATE 4 - WFCStateMonitorService.onCreate (line 422+)
```smali
if (SystemProperties.getBoolean("persist.vendor.sys.single.imsstack", false) == false)
        -> stopSelf()   # VoWIFI monitor never runs, WFC state machine dead
```
This is a separate gate purely for VoWIFI and is NOT influenced by the telefonica
volte props. Needs `persist.vendor.sys.single.imsstack=true` on the device, or a
smali patch to force `init(true)`.

## GATE 5 - Utilities.isSupportDualVoWifi (n3am/vowifi/Utilities.smali:59)
affects dual-standby VoWIFI, not single-sim VoWIFI.

## HAL gate - ImsRadioInterface.getRadioServiceProxy (line ~7100)
```
1. ServiceManager.waitForDeclaredService(
      "vendor.unisoc.hardware.radio.ims.IImsRadio/slotN")
2. HIDL fallback vendor.sprd.hardware.radio.ims@1.1::IImsRadio.getService("slotN",false)
3. HIDL 1.0 fallback
```
If all fail, `mImsRadioServiceProxy.isEmpty()` == true -> every RIL IMS request
silently no-ops. No smali patch can fix a missing HAL: this is the part that
requires the IS8 stock vendor (Radio HAL + vendor_dlkm) to be used when flashing.

## Decision
Gates 1, 2, 3, 4 are pure in-app logic and safe to force-true in smali.
HAL gate cannot be patched from the app.

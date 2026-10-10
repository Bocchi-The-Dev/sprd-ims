# Bootclasspath dependency: unisoc_ims_common.jar

## The problem
`com.spreadtrum.ims` was compiled against Unisoc's bootclasspath jar
`/system/framework/unisoc_ims_common.jar` (declared in
`/system/etc/classpaths/bootclasspath.pb`). The APK itself does **not** contain
any of these classes, so they must be provided by the runtime classpath.

The jar declares 29 classes in `com.android.ims.internal`:
```
GbaAuthResult          ImsCallForwardInfoEx   ImsManagerEx
IImsDozeManager        ImsSrvccCallInfo       IN3AMVideoStateNoitfy
IImsDozeObserver       IImsServiceEx          IVoWiFiAttachCallback
IImsEventListener      IImsServiceListenerEx  IVoWiFiAvailabilityCallback
IImsPdnStateListener   IImsUt                 IVoWifiCall
IImsRegisterListener   IImsUtEx               IVoWifiCallCallback
IIwlanAttachActionListener  IImsUtListenerEx   IVoWifiRegister
IIwlanMmsActionListener      IImsRegisterListener  IVoWifiRegisterCallback
IVoWifiSecurity        IVoWifiSecurityCallback  IVoWifiSms
IVoWifiSmsCallback     IVoWifiUT               IVoWifiUTCallback
```
Only **2** of those 29 (`IImsServiceEx`, `ImsCallForwardInfoEx`) exist in AOSP's
`telephony-common.jar` that ships in the IS8 ROM. Every other one is
Unisoc-specific. The APK references 35 distinct `com.android.ims.internal.*`
symbols in total; the rest come from AOSP.

**=> The LOS 20 GSI will throw `NoClassDefFoundError` the moment any VOWIFI
class is touched** (and actually on first `ImsAdapterService.onCreate` too,
because `IImsUtEx` / `IImsServiceEx` resolution happens there).

## Why not add the jar to the GSI bootclasspath
- `/system/etc/classpaths/bootclasspath.pb` is a protobuf; LOS 20's is generated
  by its own build and adding an entry by hand is fragile.
- Any new BOOTCLASSPATH jar must also be represented in the boot image
  (`boot.art` boot profile / `dexopt`), otherwise ART logs the jar as
  "obsolete" and rejects it. Rebuilding the boot image needs the exact same
  toolchain + platform version as the GSI, which we do not have.

## Chosen fix: merge the jar's dex into the APK
`tools/build.sh` decodes `framework-libs/unisoc_ims_common.jar` and copies the
smali into `sprd-ims/smali_classes2/`, which apktool re-emits as `classes2.dex`
(standard multidex layout, no manifest change needed).

Why this is safe:
- **Class lookup order is BootClassLoader first, then the app's dex.** So the 2
  AOSP classes (`IImsServiceEx`, `ImsCallForwardInfoEx`) still resolve to the
  platform's own copies - which is exactly what the telephony framework's phone
  process also uses, so binder interop stays consistent.
- Only the 27 Unisoc-only classes get loaded from our dex.
- Duplicate class definitions across the boot classpath and an app dex are
  legal; there is no install-time signature/sha256 check like there is between
  two APKs.
- No changes to `AndroidManifest.xml`, no `sharedUserId` or signature change.

## How to verify
```
unzip -p ImsApp.apk classes2.dex > c2.dex
baksmali d c2.dex        # then look for com/android/ims/internal/IVoWifiSecurity.smali
# or, from the apktool project:
ls sprd-ims/smali_classes2/com/android/ims/internal/
```
`tools/build.sh` asserts this on every build for
`IVoWifiSecurity, IVoWifiCall, IVoWifiRegister, IVoWifiSms, IVoWifiUT,
ImsManagerEx, ImsSrvccCallInfo, GbaAuthResult`.

## Other bootclasspath jar extracted: /system_ext/bin/ims_bridged
Also required, and it lives in `/system_ext` (not vendor):
```
/system_ext/bin/ims_bridged     (user root, class main, from ims_bridged.rc)
/system_ext/lib64/libimsbrd.so  (its only non-NDK dependency)
/system_ext/lib/libimsbrd.so
/system_ext/etc/init/ims_bridged.rc
```
`libimsbrd.so` contains `vowifi-call` and `volte-call` strings, i.e. this is the
VoWIFI/VoLTE bridge userspace that pushes call info across to the modem. It is
started by `service ims_bridged /system_ext/bin/ims_bridged` (class main, user
root) and there are matching kernel threads `imsbr-ctrl[5-3]`,
`imsbr-data[5-2]`.

**A GSI flash replaces `/system`, and many GSI setups also replace
`/system_ext`** -> `ims_bridged` would silently disappear and VoLTE/VoWIFI call
data would stop flowing. If the flash wipes system_ext, this daemon must be
carried over into `/system_ext` (or `/system`) of the GSI alongside the APK.
It depends on the kernel `ims_bridge` module, which comes from the (kept) vendor
boot image, so that part is fine.

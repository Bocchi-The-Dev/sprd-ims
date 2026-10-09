# Signing: why this matters more than usual

`com.spreadtrum.ims` is declared as:

    <manifest android:sharedUserId="android.uid.phone" coreApp="true" ...>

`android.uid.phone` is the shared UID that the platform itself runs under, so
**any** package that joins it must be signed with the **same key the framework
is signed with** on the target device. On the Unisoc ROM that is the vendor's
platform key; on the Andyyan LOS20 GSI it is whatever key that GSI was built
with.

Consequences:
- Signing with an arbitrary key -> the package is skipped at boot scan with
  "no signatures that match those in shared user android.uid.phone" and IMS
  still will not come up. So a debug/test key only proves the build works, it
  does not give you a working VoLTE stack.
- `com.android.imsserviceentitlement` does **not** declare a shared UID, so a
  test key is fine for it as long as it is installed as a system app.

## Options

1. **Get the GSI's platform key** (best).
   Find `platform.pk8` + `platform.x509.pem` in the LOS20 GSI's source tree, or
   `sepolicy`-adjacent `platform.jks`, then:
       openssl pkcs8 -inform DER -nocrypt -in platform.pk8 -out platform.pem
       openssl pkcs12 -export -in platform.x509.pem -inkey platform.pem \
           -name platform -out platform.p12 -password pass:android
       keytool -importkeystore -deststorepass android -destkeystore \
           secrets/platform.jks -srckeystore platform.p12 -srcstoretype PKCS12 \
           -srcstorepass android -alias platform
   Then set repo secrets:
       PLATFORM_KEYSTORE_B64  = base64 of secrets/platform.jks
       PLATFORM_KEYSTORE_PASS
       PLATFORM_KEY_ALIAS     = platform
       PLATFORM_KEY_PASS

2. **Drop the shared UID** in the smali (change of behaviour - needs testing).
   Remove `android:sharedUserId` / `android:coreApp` from
   `sprd-ims/AndroidManifest.xml` so the APK can live on its own UID. The
   framework then talks to it purely over `ims_ex` / `ims_ut_ex` binder + the
   `android.telephony.ims.ImsService` bind action. This is the usual trick for
   GSIs and works when the stock vendor Radio HAL is present. It does need the
   privileged permission allowlist entries (see docs/).

3. **Just test with a debug key** - what CI does by default - to confirm the
   smali builds, verifies round-trip, and the gates are actually forced open.
   That tells us nothing about signature policy, everything about the code.

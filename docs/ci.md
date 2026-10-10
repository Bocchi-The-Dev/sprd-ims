# CI: building the patched IMS APKs

Workflow: `.github/workflows/build-ims.yml` (`build-ims`)
Everything is driven by `tools/build.sh`, which runs identically locally and in CI.

## What it does
1. `tools/build.sh` builds both decompiled trees with apktool:
   - `sprd-ims`                      -> `ImsApp`
   - `ims-service-entitlement`       -> `ImsServiceEntitlement`
2. **res-name sanitising**: apktool's aapt/aapt2 reject `$` inside resource entry
   names, and Google's setup-wizard library ships drawables called
   `$sud_fourcolor_progress_bar__N` / `$avd_show_password__N`. The script renames
   every `$` to `_` across filenames, referencing xml, and `public.xml`, so
   resource ids (`0x7f07...`) survive.
3. **build**: `apktool b --use-aapt2`, falling back to `apktool b`. aapt2 must be
   first: the Debian apktool repack ships no bundled aapt binaries, falls back to
   the PATH `aapt`, and that v1 binary crashes ("First type is not attr!") on
   SDK 33 targets.
4. **round-trip verify** (this is the static verification the port is waiting on):
   - decode each built apk again and assert the 3 forced-enable gates are present
     in the resulting dex:
     - `ImsConfigImpl.isImsEnabledBySystemProperties`  -> `const/4 v0, 0x1`
     - `ImsConfigImpl.isVoWiFiEnabledByBoard`           -> `const/4 p0, 0x1`
     - `WFCStateMonitorService.onCreate`                -> `const/4 v0, 0x1`
   - assert `sharedUserId="android.uid.phone"` and the `android.telephony.ims.ImsService`
     bind action survived.
5. **sign**: zipalign -p 4 + apksigner. Key selection, in order:
   1. `KEYSTORE` env var if set
   2. `secrets/platform.jks` (gitignored)
   3. a freshly generated throwaway debug key
   **A debug key does not satisfy `sharedUserId="android.uid.phone"`.** See
   `docs/signing.md` before flashing.

## Artifacts
Uploaded as `sprd-ims-filtered`, retention 14 days:
- `dist/ImsApp-signed.apk` (+ `.idsig`)
- `dist/ImsServiceEntitlement-signed.apk` (+ `.idsig`)
- `dist/*.unsigned.apk`
- `build-info/summary.txt`

## Running locally
    ./tools/build.sh            # build + verify + sign
    ./tools/build.sh --no-sign  # build + verify only
Needs: `java 17`, `apktool`, `aapt`, `apksigner`, `zipalign`, `keytool`.

## Signing a real release
Set repo secrets (Settings -> Secrets -> Actions):
    PLATFORM_KEYSTORE_B64   base64 of the LOS20 GSI platform .jks
    PLATFORM_KEYSTORE_PASS
    PLATFORM_KEY_ALIAS
    PLATFORM_KEY_PASS
Then `workflow_dispatch` the `build-ims` workflow.

## Gotchas already burned
| Symptom | Cause | Fix |
|---|---|---|
| `brut...Could not extract resource: /prebuilt/linux/aapt_64` | Debian apktool strips bundled aapt | harmless, uses PATH binary |
| `aapt...First type is not attr!` (exit 134) | that PATH binary is aapt **v1** | pass `--use-aapt2` |
| `resource ... has invalid entry name '$...'` | aapt2 rejects `$` in res names | `$` -> `_` in res + public.xml |
| `resource drawable/$_x__0 not found` at link | rename must be char-wise identical everywhere | single `$`->`_` pass, files+content+public.xml |
| `keytool` fails in CI | empty `-keypass` | default `KEY_PASS` to `KEYSTORE_PASS` |
| metadata step dies | `apksigner verify` on an unsigned apk | tolerate non-zero exit |
| `apt install aapt2` fails | `aapt2` is a *virtual* package on Ubuntu | install `aapt` (provides both) |

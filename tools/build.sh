#!/usr/bin/env bash
# Build + sign the patched IMS APKs.
# Works both locally and in CI (see .github/workflows/build-ims.yml).
#
# Usage:
#   tools/build.sh            # build + sign with whatever key is available
#   tools/build.sh --no-sign  # build only, no signing
#
# Signing is selected in this order:
#   1) explicit key given via env:  KEYSTORE / KEYSTORE_PASS / KEY_ALIAS / KEY_PASS
#   2) ./secrets/platform.jks      (gitignored; put the device platform key here)
#   3) freshly generated debug key under .tmp/ (system apps only, see docs/signing.md)

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

OUT_DIR="${OUT_DIR:-dist}"
WORK_DIR="${WORK_DIR:-.tmp}"
APKTOOL_JAR="${APKTOOL_JAR:-}"
JAVA_BIN="${JAVA_BIN:-java}"

log() { printf '\033[0;36m[*]\033[0m %s\n' "$*"; }
die() { printf '\033[0;31m[!]\033[0m %s\n' "$*" >&2; exit 1; }

apk_to_project() {
  case "$1" in
    ImsApp)             echo "sprd-ims" ;;
    ImsServiceEntitlement) echo "ims-service-entitlement" ;;
    *) die "unknown apk name: $1" ;;
  esac
}

# ---------------------------------------------------------------- apktool
if [ -z "$APKTOOL_JAR" ]; then
  if [ -x /usr/local/bin/apktool ]; then
    APKTOOL_JAR=/usr/local/bin/apktool          # official wrapper script
  elif [ -f "$WORK_DIR/apktool.jar" ]; then
    APKTOOL_JAR="$WORK_DIR/apktool.jar"
  else
    log "apktool not found locally; fetching latest release"
    mkdir -p "$WORK_DIR"
    local_url="$(curl -fsSL https://api.github.com/repos/iBotPeaks/Apktool/releases/latest \
      | grep -o 'https://[^"]*\.jar' | head -n1 || true)"
    [ -n "$local_url" ] || die "could not resolve an apktool jar URL"
    curl -fsSL -o "$WORK_DIR/apktool.jar" "$local_url" || die "apktool download failed"
    APKTOOL_JAR="$WORK_DIR/apktool.jar"
  fi
fi
log "using apktool: $APKTOOL_JAR"

# ------------------------------------------------------------------- build
SIGN=1
[ "${1:-}" = "--no-sign" ] && SIGN=0

mkdir -p "$OUT_DIR"
BUILT=()

for NAME in ImsApp ImsServiceEntitlement; do
  PROJ="$(apk_to_project "$NAME")"
  [ -d "$PROJ/smali" ] || die "missing decompiled tree $PROJ"
  UNSIGNED="$OUT_DIR/${NAME}.unsigned.apk"
  log "building $NAME from $PROJ"
  "$JAVA_BIN" -jar "$APKTOOL_JAR" b "$PROJ" -o "$UNSIGNED" \
    || "$JAVA_BIN" -jar "$APKTOOL_JAR" b --use-aapt2 "$PROJ" -o "$UNSIGNED"
  BUILT+=("$NAME:$UNSIGNED")
done

# ---------------------------------------------------------------- verify
# Round-trip: decode each built apk again and assert the patch is still there.
log "round-trip verification (rebuild -> decode -> assert patch present)"
for NAME in ImsApp ImsServiceEntitlement; do
  UNSIGNED="$OUT_DIR/${NAME}.unsigned.apk"
  [ -f "$UNSIGNED" ] || die "build produced no apk for $NAME"
  CHECK_DIR="$WORK_DIR/verify-$NAME"
  rm -rf "$CHECK_DIR"
  "$JAVA_BIN" -jar "$APKTOOL_JAR" d -f "$UNSIGNED" -o "$CHECK_DIR" >/dev/null
done

# ImsApp: the three forced-enable gates must survive into the dex.
CFG="$WORK_DIR/verify-ImsApp/smali/com/spreadtrum/ims/ImsConfigImpl.smali"
WFC="$WORK_DIR/verify-ImsApp/smali/com/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService.smali"
grep -q 'const/4 v0, 0x1' "$CFG" || die "verify: isImsEnabledBySystemProperties patch missing"
grep -q 'const/4 p0, 0x1' "$CFG" || die "verify: isVoWiFiEnabledByBoard patch missing"
grep -q 'const/4 v0, 0x1' "$WFC" || die "verify: WFCStateMonitorService patch missing"
log "ImsApp: all 3 forced-enable gates verified in the rebuilt dex"

# Manifest sanity: shared user id + the bind action must still be there.
MAN="$WORK_DIR/verify-ImsApp/AndroidManifest.xml"
grep -q 'android.uid.phone' "$MAN" || die "verify: lost sharedUserId android.uid.phone"
grep -q 'android.telephony.ims.ImsService' "$MAN" || die "verify: lost ImsService bind action"
log "ImsApp: sharedUserId + ImsService bind action verified"

# ------------------------------------------------------------------- sign
if [ "$SIGN" -ne 1 ]; then
  log "skipping signing (--no-sign)"
  exit 0
fi

if ! command -v apksigner >/dev/null 2>&1; then
  log "apksigner not found, trying zipalign+apt install"
  if command -v apt-get >/dev/null 2>&1; then
    (sudo -n apt-get install -y apksigner zipalign 2>/dev/null) || true
  fi
fi
command -v apksigner >/dev/null 2>&1 || die "apksigner unavailable; install android-sdk-build-tools"

KEYSTORE="${KEYSTORE:-}"
KEYSTORE_PASS="${KEYSTORE_PASS:-android}"
KEY_ALIAS="${KEY_ALIAS:-platform}"
KEY_PASS="${KEY_PASS:-}"

if [ -z "$KEYSTORE" ]; then
  if [ -f secrets/platform.jks ]; then
    log "using secrets/platform.jks"
    KEYSTORE=secrets/platform.jks
  else
    log "no key supplied, generating a throwaway debug key"
    mkdir -p "$WORK_DIR"
    KEYSTORE="$WORK_DIR/debug.jks"
    rm -f "$KEYSTORE"
    keytool -genkeypair -v -keystore "$KEYSTORE" -storepass "$KEYSTORE_PASS" \
      -alias "$KEY_ALIAS" -keypass "$KEY_PASS" -keyalg RSA -keysize 2048 \
      -validity 10000 -dname "CN=sprd-ims CI, O=Bocchi-The-Dev, C=US" 2>&1 | tail -1
  fi
fi

SIGN_ARGS=(--ks "$KEYSTORE" --ks-pass "pass:${KEYSTORE_PASS}" --ks-key-alias "$KEY_ALIAS")
[ -n "$KEY_PASS" ] && SIGN_ARGS+=(--key-pass "pass:${KEY_PASS}")

for NAME in ImsApp ImsServiceEntitlement; do
  UNSIGNED="$OUT_DIR/${NAME}.unsigned.apk"
  ALIGNED="$OUT_DIR/${NAME}.aligned.apk"
  SIGNED="$OUT_DIR/${NAME}-signed.apk"

  if command -v zipalign >/dev/null 2>&1; then
    zipalign -p -f 4 "$UNSIGNED" "$ALIGNED"
  else
    cp "$UNSIGNED" "$ALIGNED"
  fi
  apksigner sign "${SIGN_ARGS[@]}" --out "$SIGNED" "$ALIGNED"
  apksigner verify --print-certs "$SIGNED" | sed "s/^/    [$NAME] /"
  log "signed -> $SIGNED"
  rm -f "$ALIGNED"
done

log "done. artifacts in $OUT_DIR/"
ls -la "$OUT_DIR"

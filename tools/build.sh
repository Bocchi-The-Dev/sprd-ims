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
# Two install flavours exist:
#   - distro packages: a /usr/bin/apktool wrapper that does
#         java -cp "/usr/share/apktool/*" brut.apktool.Main "$@"
#   - upstream: a single apktool_*.jar
# We normalise both into an array so we never feed a wrapper to `java -jar`.
#
# NOTE: do not try to download a jar. The apktool project's release assets are
# not reliably reachable (the old iBotPeaks GitHub repo 404s and Bitbucket
# downloads are gone), so we use whatever apktool the host/runner already has.
APKTOOL_CMD=()
if [ -n "${APKTOOL_JAR:-}" ] && [ -f "$APKTOOL_JAR" ]; then
  if [ "$(head -c2 "$APKTOOL_JAR")" = "PK" ]; then
    APKTOOL_CMD=("$JAVA_BIN" -jar "$APKTOOL_JAR")
  else
    APKTOOL_CMD=("$JAVA_BIN")
    # guess the lib dir a sibling of the wrapper
    LIBDIR="$(dirname "$(readlink -f "$APKTOOL_JAR")")/../share/apktool"
    [ -d "$LIBDIR" ] || LIBDIR=/usr/share/apktool
    APKTOOL_CMD+=(-cp "$LIBDIR/*" brut.apktool.Main)
  fi
elif [ -x /usr/bin/apktool ]; then
  APKTOOL_CMD=(/usr/bin/apktool)
elif command -v apktool >/dev/null 2>&1; then
  APKTOOL_CMD=("$(command -v apktool)")
else
  die "apktool not found. Install it first: apt-get install -y apktool"
fi
log "using apktool: ${APKTOOL_CMD[*]}"

# ------------------------------------------------------------------- build
SIGN=1
[ "${1:-}" = "--no-sign" ] && SIGN=0

mkdir -p "$OUT_DIR"
BUILT=()

# apktool's aapt/aapt2 reject '$' inside resource entry names. Google's setup
# wizard library ships drawables named "$sud_fourcolor_progress_bar__N" and
# "$avd_show_password__N", which decode fine but cannot be re-linked.
# Rename every '$' to '_' in filenames, in the res xml that references them,
# and in public.xml, keeping all three in lockstep so the ids survive.
sanitize_res_names() {
  local prj="$1"
  command -v python3 >/dev/null 2>&1 || { log "python3 missing, skipping res sanitisation"; return 0; }
  log "sanitising '\$' resource names in $prj"
  python3 - "$prj" <<'PY'
import os, sys
prj = sys.argv[1].rstrip("/")
os.chdir(prj)

# Directories whose xml files are pure resource references (no format strings).
SAFE_XML_DIRS = ("drawable", "anim", "animator", "drawable-*", "animator-*", "anim-*")
# values files that are name->id maps, never format strings.
SAFE_VALUE_FILES = {"public.xml", "ids.xml", "attrs.xml"}

def matches(name, patterns):
    import fnmatch
    return any(fnmatch.fnmatch(name, p) for p in patterns)

def sanitize_text(s, in_values):
    if not in_values:
        return s.replace("$", "_")          # resource refs only
    # values xml: keep %1$s format strings, only strip '$' from entry names
    head, sep, tail = s.partition("<resources>")
    head = head.replace("$", "_")
    return head + sep + tail

for root, dirs, files in os.walk("res"):
    rel = os.path.relpath(root, "res")
    is_values = rel == "values" or rel == "values-public"
    for f in files:
        in_values = is_values and f in SAFE_VALUE_FILES
        if not (in_values or (f.endswith(".xml") and matches(rel, SAFE_XML_DIRS))):
            continue
        p = os.path.join(root, f)
        try:
            s = open(p, encoding="utf-8").read()
        except (OSError, UnicodeDecodeError):
            continue
        if "$" not in s:
            continue
        open(p, "w", encoding="utf-8").write(sanitize_text(s, in_values))

# filenames last, so references above already point at the new names
for root, dirs, files in os.walk("res"):
    for f in files:
        if "$" in f:
            os.rename(os.path.join(root, f), os.path.join(root, f.replace("$", "_")))
PY
}

for NAME in ImsApp ImsServiceEntitlement; do
  PROJ="$(apk_to_project "$NAME")"
  [ -d "$PROJ/smali" ] || die "missing decompiled tree $PROJ"
  sanitize_res_names "$PROJ"
  UNSIGNED="$OUT_DIR/${NAME}.unsigned.apk"
  log "building $NAME from $PROJ"
  rm -rf "$PROJ/build"
  # Try aapt2 first: the Debian/Ubuntu apktool package ships no prebuilt aapt
  # binaries (stripped by the DFSG repack), so it falls back to the PATH binary
  # and the old aapt v1 crashes on "First type is not attr!" for SDK 33. aapt2 works.
  "${APKTOOL_CMD[@]}" b --use-aapt2 "$PROJ" -o "$UNSIGNED" \
    || "${APKTOOL_CMD[@]}" b "$PROJ" -o "$UNSIGNED"
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
  "${APKTOOL_CMD[@]}" d -f "$UNSIGNED" -o "$CHECK_DIR" >/dev/null
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

#!/usr/bin/env bash
# Stage every piece of the port into a GSI system image tree.
#
# GSI on this device is system-as-root with system_ext/product folded into the
# system partition:
#     system/priv-app/...
#     system/system_ext/priv-app/...
#     system/product/priv-app/...
#     system/product/overlay/...
# which is why the stock paths below are rewritten as system/<stock path>.
#
# Usage:
#   tools/package-gsi.sh                # stage everything into gsi-root/
#   tools/package-gsi.sh --mount /mnt   # stage into a mounted system image
#   tools/package-gsi.sh --bundle       # also emit gsi-root.tar.gz
#
# Requires (build first): tools/build.sh --no-sign|--sign
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

STOCK="device-stock"
BUILT_SYS="dist/ImsApp-signed.apk"
BUILT_ENT="dist/ImsServiceEntitlement-signed.apk"
UNSIGNED_SYS="dist/ImsApp.unsigned.apk"
UNSIGNED_ENT="dist/ImsServiceEntitlement.unsigned.apk"

# signed if present, otherwise unsigned (still useful for a debug boot)
IMS_APK="$BUILT_SYS"; [ -f "$IMS_APK" ] || IMS_APK="$UNSIGNED_SYS"
ENT_APK="$BUILT_ENT"; [ -f "$ENT_APK" ] || ENT_APK="$UNSIGNED_ENT"

OUT="gsi-root"
DO_MOUNT=""
BUNDLE=0
for a in "$@"; do
  case "$a" in
    --mount)  DO_MOUNT="$2"; shift 2 ;;
    --bundle) BUNDLE=1; shift ;;
    *) shift ;;
  esac
done
[ -n "$DO_MOUNT" ] && OUT="$DO_MOUNT"

log() { printf '\033[0;36m[*]\033[0m %s\n' "$*"; }
die() { printf '\033[0;31m[!]\033[0m %s\n' "$*" >&2; exit 1; }

[ -f "$IMS_APK" ] || die "no ImsApp apk - run tools/build.sh first"
[ -f "$ENT_APK" ] || die "no entitlement apk - run tools/build.sh first"

# --- the stock pieces we need ------------------------------------------------
IMS_BRIDGED="$STOCK/system_ext-bin/ims_bridged"
IMS_BIN_DIR="$STOCK/system_ext-bin"

log "staging into $OUT"

# install <mode> <owner> <group> <selinux> <src> <dst>
install_as() {
  local mode="$1" own="$2" grp="$3" ctx="$4" src="$5" dst="$6"
  mkdir -p "$(dirname "$dst")"
  cp -f "$src" "$dst"
  chmod "$mode" "$dst"
  chown "$own:$grp" "$dst" 2>/dev/null || true
  if [ -n "$ctx" ] && command -v setfattr >/dev/null 2>&1; then
    setfattr -n security.selinux -v "$ctx" "$dst" 2>/dev/null || true
  fi
  log "  $(printf '%-58s' "$dst") ${mode} ${own}:${grp} ${ctx}"
}

# ============================================================================
# 1. com.spreadtrum.ims  ->  /system_ext/priv-app/ims/ims.apk
#    stock: /system_ext/priv-app/ims/ims.apk, 0644 root:root, system_file
#    GSI:   system/system_ext/priv-app/ims/ims.apk
# ============================================================================
install_as 644 root root u:object_r:system_file:s0 \
  "$IMS_APK" "$OUT/system/system_ext/priv-app/ims/ims.apk"

# ============================================================================
# 2. com.android.imsserviceentitlement -> /product/priv-app/ImsServiceEntitlement/
#    stock: /product/priv-app/ImsServiceEntitlement/ImsServiceEntitlement.apk
#    GSI:   system/product/priv-app/ImsServiceEntitlement/...
# ============================================================================
install_as 644 root root u:object_r:system_file:s0 \
  "$ENT_APK" "$OUT/system/product/priv-app/ImsServiceEntitlement/ImsServiceEntitlement.apk"

# ============================================================================
# 3. privapp-permissions allowlists
#    stock: /system_ext/etc/permissions/com.spreadtrum.ims.xml
#           /product/etc/permissions/com.android.imsserviceentitlement.xml
# ============================================================================
install_as 644 root root u:object_r:system_file:s0 \
  "$STOCK/perms/com.spreadtrum.ims.xml" \
  "$OUT/system/system_ext/etc/permissions/com.spreadtrum.ims.xml"
install_as 644 root root u:object_r:system_file:s0 \
  "$STOCK/perms/com.android.imsserviceentitlement.xml" \
  "$OUT/system/product/etc/permissions/com.android.imsserviceentitlement.xml"

# ============================================================================
# 4. the VoLTE/WFC framework-res overlay
#    stock: /product/overlay/framework-res__auto_generated_rro_product.apk
#    sets config_device_volte_available / _vt_ / _wfc_ims_ = true
#    GSI:   system/product/overlay/...
#    NOTE: built against the Unisoc framework-res. It must be re-signed with
#          the GSI's platform key or it will be rejected as an untrusted overlay.
# ============================================================================
install_as 644 root root u:object_r:vendor_overlay_rro_file:s0 \
  "$STOCK/overlays-product/framework-res__auto_generated_rro_product.apk" \
  "$OUT/system/product/overlay/framework-res__auto_generated_rro_product.apk"

# ============================================================================
# 5. ims_bridged - the VoLTE/VoWIFI packet-marking bridge
#    stock: /system_ext/bin/ims_bridged  (ims_bridged_exec, 0755)
#           /system_ext/lib64/ims_bridged.so
#           /system_ext/etc/init/ims_bridged.rc
#    Talks to the kernel ims_bridge module via ioctls + a unix socket, and
#    programs netlink marks so VoLTE/VoWIFI call packets are routed specially.
#    Needed for CALL AUDIO, not for IMS registration.
#    !! the domain ims_bridged_exec must exist in the GSI's sepolicy, or the
#       service will fail to start. If it does not, label it system_file and it
#       will run in the init domain (weak, but it will start).
# ============================================================================
# !! LIBIMSBRD: the extraction overwrote the 64-bit build with the 32-bit one
#    (both pulls wrote to the same destination). ims_bridged is 64-bit aarch64,
#    so it needs /system_ext/lib64/libimsbrd.so, which we no longer have.
#    The 32-bit copy sitting here is the WRONG ABI and must not be installed.
#    Re-pull it from the stock ROM (or the .pac) before enabling section 5.
install_as 755 root root u:object_r:ims_bridged_exec:s0 \
  "$IMS_BRIDGED" "$OUT/system/system_ext/bin/ims_bridged"

for abi in lib64 lib; do
  src="$IMS_BIN_DIR/$abi/libimsbrd.so"
  if [ -f "$src" ]; then
    cls=$(python3 -c "print({1:'32',2:'64'}.get(open('$src','rb').read(5)[4],0))" 2>/dev/null || echo 0)
    if [ "$abi" = "lib64" ] && [ "$cls" != "64" ]; then
      log "  SKIP $src - not a 64-bit ELF ($cls)"
      continue
    fi
    install_as 644 root root u:object_r:system_lib_file:s0 \
      "$src" "$OUT/system/system_ext/$abi/libimsbrd.so"
  fi
done
install_as 644 root root u:object_r:system_file:s0 \
  "$STOCK/config/ims_bridged.rc" "$OUT/system/system_ext/etc/init/ims_bridged.rc"

# ============================================================================
# 6. props (drop into an init .rc or build.prop)
# ============================================================================
mkdir -p "$OUT/system/system_ext/etc/init"
cat > "$OUT/system/system_ext/etc/init/ims-port.rc" <<'RC'
# sprd-ims port - see docs/next.md
on boot
    setprop persist.vendor.sys.volte.enable true
    setprop persist.vendor.radio.imsua.setting 1
    setprop persist.vendor.sys.single.imsstack true
    setprop persist.dbg.volte_avail_ovr 1
    setprop persist.dbg.vt_avail_ovr 1
RC
chmod 644 "$OUT/system/system_ext/etc/init/ims-port.rc"
setfattr -n security.selinux -v u:object_r:system_file:s0 \
  "$OUT/system/system_ext/etc/init/ims-port.rc" 2>/dev/null || true
log "  $OUT/system/system_ext/etc/init/ims-port.rc"

log ""
log "staged tree:"
find "$OUT" -type f | sort | sed "s|^$OUT|  |"

if [ "$BUNDLE" = 1 ]; then
  tar -czf gsi-root.tar.gz -C "$OUT" .
  log "bundle: $(pwd)/gsi-root.tar.gz"
fi

log ""
log "NOT handled by this script (needs your decision):"
log "  - signing the APKs with the LOS 20 GSI platform key"
log "    (sharedUserId=android.uid.phone rejects any other key at boot)"
log "  - re-signing framework-res__auto_generated_rro_product.apk"
log "  - verifying ims_bridged_exec exists in the GSI's sepolicy"
log "  - dexopt of the apks after copying into the image"

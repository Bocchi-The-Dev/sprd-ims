#!/usr/bin/env bash
# Patch an EROFS system image (GSI) with the sprd-ims port.
#
#   tools/patch-erofs-system.sh <in-system.img> [out-system.img]
#
# What it does:
#   1. mounts the image read-only with seclabel
#   2. extracts the whole tree, preserving uid/gid/mode/SELinux xattrs via tar
#   3. runs tools/package-gsi.sh --mount <tree>   (the port)
#   4. rebuilds an EROFS image with mkfs.erofs, same UUID + volume label
#   5. verifies the erofs superblock magic at offset 1024
#
# Requirements: root (loop mount), tar, mkfs.erofs, GNU tar >= 1.27 for --xattrs
#
# !! READ docs/gsi-avb.md FIRST !!
#    If the system partition is covered by vbmeta (AVB), changing its contents
#    invalidates the hash and the device will refuse to boot the partition.
#    The rebuilt image must be flashed together with
#      fastboot --disable-verity --disable-verification flash vbmeta
#    or the vbmeta must be re-signed.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

IN="${1:?usage: patch-erofs-system.sh <in-system.img> [out-system.img]}"
OUT="${2:-${IN%.img}-ported.img}"
STAGE=".tmp/erofs-stage"

log() { printf '\033[0;36m[*]\033[0m %s\n' "$*"; }
die() { printf '\033[0;31m[!]\033[0m %s\n' "$*" >&2; exit 1; }

[ "$(id -u)" = 0 ] || die "must run as root (sudo ./tools/patch-erofs-system.sh ...)"
[ -f "$IN" ] || die "input image not found: $IN"

# ---------------------------------------------------------------- capture sb
log "reading superblock of $IN"
SB=$(dump.erofs -s "$IN" 2>/dev/null || true)
[ -n "$SB" ] || die "not a readable EROFS image: $IN"
UUID=$(printf '%s\n' "$SB" | awk -F': *' '/Filesystem UUID/{print $2}')
BLKSZ=$(printf '%s\n' "$SB" | awk -F': *' '/Filesystem blocksize/{print $2}')
[ -n "$UUID" ] || die "could not read the filesystem UUID"
log "  uuid=$UUID blocksize=$BLKSZ"

# volume label: mkfs.erofs -L is limited to 15 chars, and the LOS GSI has none
LABEL=$(printf '%s\n' "$SB" | awk -F': *' '/volume name|Filesystem label/{print $2}')
FILE_OUT=$(file -b "$IN")
VOLNAME=$(printf '%s' "$FILE_OUT" | sed -n 's/.*name=\([^,]*\).*/\1/p')
[ -n "$VOLNAME" ] && log "  volume label=$VOLNAME"

# ------------------------------------------------------------- extract tree
rm -rf "$STAGE" && mkdir -p "$STAGE/mnt" "$STAGE/tree"
MNT="$STAGE/mnt"

cleanup() { mountpoint -q "$MNT" 2>/dev/null && umount "$MNT"; }
trap cleanup EXIT INT TERM

log "mounting read-only with seclabel"
mount -o loop,ro,seclabel "$IN" "$MNT"
MAGIC=$(getfattr -m - -d "$MNT" 2>/dev/null | grep -c security.selinux || true)
log "  selinux xattrs readable: $MAGIC"

log "extracting (tar, uid/gid/mode/xattrs preserved) -> $STAGE/tree"
# --xattrs-include='*' is required, otherwise GNU tar drops most xattrs
tar --xattrs --xattrs-include='*' --numeric-owner -cf "$STAGE/orig.tar" -C "$MNT" .
mkdir -p "$STAGE/tree"
tar --xattrs --xattrs-include='*' --numeric-owner -xf "$STAGE/orig.tar" -C "$STAGE/tree"
NFILES=$(find "$STAGE/tree" | wc -l)
log "  extracted $NFILES entries"

# spot-check that SELinux actually survived the round trip
CHK=$(getfattr -m . -d "$STAGE/tree/system" 2>/dev/null | grep -c security.selinux || true)
[ "$CHK" -ge 1 ] || die "SELinux xattrs were NOT preserved - the image will be unlabeled"

# ----------------------------------------------------------------- apply port
log "applying the sprd-ims port"
./tools/package-gsi.sh --mount "$STAGE/tree"

# ------------------------------------------------------------------- repack
log "rebuilding EROFS (this takes a few minutes)"
BUILD_ARGS=(-zlz4hc,level=12 -C 4096 -b "$BLKSZ" -U "$UUID")
[ -n "$VOLNAME" ] && BUILD_ARGS+=(-L "$VOLNAME")
# the stock image carries a 2008 epoch timestamp; keep it for determinism
BUILD_ARGS+=(-T 1199145600 --all-time)

rm -f "$OUT"
# mkfs.erofs takes the directory as SOURCE
mkfs.erofs "${BUILD_ARGS[@]}" "$OUT" "$STAGE/tree" -x 2 2>&1 | tail -5

chown "$(logname 2>/dev/null || echo nova):$(id -gn "$(logname 2>/dev/null || echo nova)" 2>/dev/null)" "$OUT" 2>/dev/null || true

# ------------------------------------------------------------------- verify
log "verifying output"
python3 - "$OUT" <<'PY'
import sys
d = open(sys.argv[1], "rb").read(1028)
assert d[1024:1028].hex() == "e2e1f5e0", "bad erofs magic: " + d[1024:1028].hex()
print("    erofs magic @1024: e2e1f5e0  OK")
PY
OUT_UUID=$(dump.erofs -s "$OUT" 2>/dev/null | awk -F': *' '/Filesystem UUID/{print $2}')
[ "$OUT_UUID" = "$UUID" ] || die "UUID mismatch ($OUT_UUID != $UUID)"

INSZ=$(stat -c%s "$IN"); OUTSZ=$(stat -c%s "$OUT")
log ""
log "done: $OUT"
log "  input  $(numfmt --to=iec-i --suffix=B --padding=9 "$INSZ")"
log "  output $(numfmt --to=iec-i --suffix=B --padding=9 "$OUTSZ")"
log ""
log "next:"
log "  adb reboot bootloader"
log "  fastboot --disable-verity --disable-verification flash system $OUT"
log "  fastboot reboot"
log ""
log "if the image is SMALLER than the system partition that is fine (sparse);"
log "if LARGER, shrink with resize2fs/truncate BEFORE flashing or it will fail."

# AVB / vbmeta: the thing that will brick this build

Repacking `system.img` changes its content, so the AVB hash stored in `vbmeta`
no longer matches. Android will refuse to load the partition (or the whole
device) if verification is active.

## Check first

```bash
adb reboot bootloader
fastboot getvar current-slot
fastboot getvar vbmeta_size        # presence implies AVB
fastboot oem device-info           # look for "Device unlocked: true"
```

You already flashed this GSI successfully, so verification was either already
disabled or you used `--disable-verity --disable-verification`. The rebuilt
image needs the same treatment **every time** it is flashed.

## Flash sequence

```bash
adb reboot bootloader
# Wipe the data partition when changing ROM family (LOS != stock IS8),
# else locksettings.db / TrustAgent will crash-loop on first boot.
fastboot -w
fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img   # if you have one
fastboot --disable-verity --disable-verification flash system system-ported.img
fastboot --set-active=a            # keep the same slot you flashed
fastboot reboot
```

If `fastboot flash system` reports *"partition 'system' doesn't exist"* on a
dynamic-partition device, the GSI belongs in `super` instead:

```bash
fastboot flash super system-ported.img     # only if super is empty-sized
```

## Sparse vs raw

`mkfs.erofs` emits a raw image. Bootloaders accept both raw and sparse, but if
the image is **larger** than the target partition the flash fails with
*"not enough space"*. Compare first:

```bash
python3 -c "print(1261854720)  # the partition size from fastboot getvar"
stat -c %s system-ported.img
```

A smaller image is fine (the rest of the partition is left untouched, and for a
logical partition `lpmake` handles the slack). A larger one must be shrunk or
content must be dropped.

## Sanity checks before flashing

```bash
# 1. magic
python3 -c "d=open('system-ported.img','rb').read(1028);print(d[1024:1028].hex())"
#    -> e2e1f5e0

# 2. uuid must match the original or init/mountpoint bookkeeping gets confused
dump.erofs -s system-ported.img | grep UUID

# 3. it must actually mount
mkdir -p /tmp/x && sudo mount -o loop,ro system-ported.img /tmp/x && ls /tmp/x/system

# 4. our files are there with labels intact
ls -lZ /tmp/x/system/system_ext/priv-app/ims/ims.apk
```

## Rollback

Keep the pristine `system.img`. If the ported one fails to boot:

```bash
fastboot flash system system.img        # original
fastboot --set-active=a && fastboot reboot
```

Because the port is entirely additive (new priv-app + new rc + new overlay), a
failure is almost always *"the IMS app didn't start"*, not *"the device didn't
boot"* - unless the SELinux labelling or the sepolicy for `ims_bridged_exec`
breaks policy load, which is why section 5 of the placement doc suggests
falling back to `system_file` for that binary.

# GSI placement (system-as-root, system_ext/product folded in)

Confirmed with you: on this GSI the partitions are exposed as

```
/system                 <- the GSI itself
/system/system_ext      <- /system_ext
/system/product         <- /product
```

so every stock path below is simply prefixed with `system/`. `tools/package-gsi.sh`
stages all of it into `gsi-root/` (or directly into a mounted image with
`--mount /mnt`).

## The map

| # | File | Stock path | GSI path | Mode / owner / label |
|---|---|---|---|---|
| 1 | `ims.apk` (sprd-ims) | `/system_ext/priv-app/ims/ims.apk` | `system/system_ext/priv-app/ims/ims.apk` | 0644 root:root `system_file` |
| 2 | entitlement apk | `/product/priv-app/ImsServiceEntitlement/` | `system/product/priv-app/ImsServiceEntitlement/` | 0644 root:root `system_file` |
| 3 | privapp allowlist | `/system_ext/etc/permissions/com.spreadtrum.ims.xml` | `system/system_ext/etc/permissions/` | 0644 root:root `system_file` |
| 4 | privapp allowlist | `/product/etc/permissions/com.android.imsserviceentitlement.xml` | `system/product/etc/permissions/` | 0644 root:root `system_file` |
| 5 | VoLTE overlay | `/product/overlay/framework-res__auto_generated_rro_product.apk` | `system/product/overlay/` | 0644 `vendor_overlay_rro_file` |
| 6 | `ims_bridged` | `/system_ext/bin/ims_bridged` | `system/system_ext/bin/` | 0755 `ims_bridged_exec` |
| 7 | `libimsbrd.so` | `/system_ext/lib64/libimsbrd.so` | `system/system_ext/lib64/` | 0644 `system_lib_file` |
| 8 | init rc | `/system_ext/etc/init/ims_bridged.rc` | `system/system_ext/etc/init/` | 0644 `system_file` |
| 9 | our props rc | (new) | `system/system_ext/etc/init/ims-port.rc` | 0644 `system_file` |

`tools/package-gsi.sh` emits exactly this tree.

## Signed vs unsigned

Rows 1 and 2 must be signed with the **LOS 20 GSI platform key**.
`com.spreadtrum.ims` declares `sharedUserId="android.uid.phone"`, and Android
enforces signature equality per shared UID: an APK signed with anything else is
rejected at boot with *"no signatures match those in shared user
android.uid.phone"*. That is a hard requirement, not a nicety.

`dist/ImsApp-signed.apk` is currently signed with a throwaway CI debug key, which
is **only** useful for confirming the apk installs at all. See `docs/signing.md`.

Row 5 also has to be re-signed with the GSI platform key: static RROs must be
platform-signed, or `android.content.res.OverlayManager` refuses to enable them
and the VoLTE booleans stay false.

## What each piece buys you

| piece | needed for | note |
|---|---|---|
| 1 (apk + our smali patches) | everything | the 3 forced-enable gates + the intent-filter fix |
| bootclasspath merge (inside apk) | everything | LOS lacks 27/29 `com.android.ims.internal` classes |
| 3 (privapp allowlist) | everything | without it, `READ_PRIVILEGED_PHONE_STATE` is denied |
| 5 (RRO overlay) | framework-side enable | alternatives: props only, or the smali patch alone |
| 9 (props rc) | framework-side enable | belt-and-braces, `persist.vendor.sys.volte.enable` |
| 6/7/8 (ims_bridged) | **call audio only** | see below - not needed for registration |

## ims_bridged - important caveat

`libimsbrd.so` strings (`imsbrd_add_tuple`, `imsbrd_enable_mark`,
`imsbrd_send_src_mac`) plus the binary's `Start vowifi call...` /
`Stop vowifi call...` and `unix socket server` show it is a **netlink/ioctl
packet-marking helper**: it programs firewall marks so VoLTE/VoWIFI call packets
take the dedicated bearer path, driven by a unix socket fed `volte-call` /
`vowifi-call` events.

It is **not** involved in IMS registration or call signalling - that all goes over
`vendor.unisoc.hardware.radio.ims.IImsRadio`, which is served by `urild` in the
kept vendor partition.

So: skip 6/7/8 and you lose proper call audio routing on VoLTE calls; you should
still get registration, and calls may connect anyway.

Two problems with including it:
1. **`libimsbrd.so` (64-bit) was lost.** Both pulls wrote to the same
   destination and the 32-bit build overwrote the 64-bit one; `ims_bridged` is
   64-bit aarch64. `package-gsi.sh` detects the wrong ELF class and skips it.
   Re-pull from the stock ROM or `.pac` if you want row 7.
2. **The `ims_bridged_exec` domain must exist in the GSI's policy.** It is a
   Unisoc-added type and the rule was not in the pulled
   `system_ext_sepolicy.cil` - it comes from vendor sepolicy, which you keep, so
   it *probably* survives. If the service fails to start, either port the policy
   rule or relabel it `system_file` (runs in the init domain, weak but starts).

It also needs the kernel `ims_bridge` module (`/sys/module/ims_bridge/...`),
which comes from the boot image. If you flashed a GKI kernel, check
`/sys/module/ims_bridge` exists; if not, ims_bridged is dead weight anyway.

## Apply order

```bash
# 1. build
./tools/build.sh                 # needs the platform key really signed

# 2. stage into the mounted system image
./tools/package-gsi.sh --mount /mnt/gsi/system

# 3. (ext4 only) fix the SELinux xattrs and perms, then unmount
```

For **ext4** the copy + chmod + setfattr above works directly.
For **erofs** (read-only) you must rebuild the image with `mkfs.erofs`
preserving `fs_config`/`file_contexts`, or flash per-partition.

## Then dexopt

Newly copied priv-apps are not AOT-compiled, so the first boot runs them
interpret-only. Move them into place and let the system dexopt
(`pm compile -f -m speed com.spreadtrum.ims`), or accept a slow first boot.

## Verification after boot

```bash
adb shell service list | grep -E 'ims_ex|ims_ut_ex'      # both must appear
adb shell dumpsys phone | grep -iE 'volte|MMTEL|ImsState'
adb shell getprop | grep -iE 'volte|wfc|vowifi|single.imsstack'
adb logcat -b crash -d | grep -i ims                    # any NoClassDefFoundError?
adb shell dumpsys package com.spreadtrum.ims | grep -E 'codePath|signatures'
adb shell ls -lZ /system_ext/priv-app/ims/ims.apk        # must not say unlabeled
```
`ims_ex` + `ims_ut_ex` appearing means `ImsAdapterService.onCreate` got past all
three gates - which is the whole point of the smali patch.

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:6fb10891ff4912631d539a9c5f23c422a6f5f73b; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:0bfdbd26aea9c07d853060b82d2ab96a65245d1d EMMC:/dev/block/bootdevice/by-name/recovery 6fb10891ff4912631d539a9c5f23c422a6f5f73b 67108864 0bfdbd26aea9c07d853060b82d2ab96a65245d1d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

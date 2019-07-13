#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c445ce2482a3a67465575f5add1e9963ab8384fc; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:cd608efb40b098691ed43a2eaa9fcf0a310d6a15 EMMC:/dev/block/bootdevice/by-name/recovery c445ce2482a3a67465575f5add1e9963ab8384fc 67108864 cd608efb40b098691ed43a2eaa9fcf0a310d6a15:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:21cd18f50911528a1e6667522dc9fede62944428; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:1d31763ed8ad3fb547d110d8562983a6580397ce EMMC:/dev/block/bootdevice/by-name/recovery 21cd18f50911528a1e6667522dc9fede62944428 67108864 1d31763ed8ad3fb547d110d8562983a6580397ce:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

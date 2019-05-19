#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:013c65b211df143744d74f7c3dd28920cf7c743d; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:f95b21d5c7dc8eeb7aee4edd35982cd94ffb6d41 EMMC:/dev/block/bootdevice/by-name/recovery 013c65b211df143744d74f7c3dd28920cf7c743d 67108864 f95b21d5c7dc8eeb7aee4edd35982cd94ffb6d41:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

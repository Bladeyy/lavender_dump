#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:711f71bde7e378bf7c4ee46c845f3d0def3ff3e9; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:44dd00670b6ceee7a01d6c061e070471206564af EMMC:/dev/block/bootdevice/by-name/recovery 711f71bde7e378bf7c4ee46c845f3d0def3ff3e9 67108864 44dd00670b6ceee7a01d6c061e070471206564af:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

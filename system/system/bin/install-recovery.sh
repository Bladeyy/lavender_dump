#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f277e7957bed088bb207e50ff93da88a6311f415; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:971d753c4d621d3b70602326d03595f9b6fff258 EMMC:/dev/block/bootdevice/by-name/recovery f277e7957bed088bb207e50ff93da88a6311f415 67108864 971d753c4d621d3b70602326d03595f9b6fff258:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

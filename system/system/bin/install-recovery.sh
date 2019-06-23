#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:9744abfd7dedadacf9bac5dda111c8e3593a4825; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:f0d6afa4f0f10d388f40379c0573bf87551878e7 EMMC:/dev/block/bootdevice/by-name/recovery 9744abfd7dedadacf9bac5dda111c8e3593a4825 67108864 f0d6afa4f0f10d388f40379c0573bf87551878e7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

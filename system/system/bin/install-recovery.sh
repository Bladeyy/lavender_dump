#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3b1f1b444b0edf1435bcea77cd22db056db4e609; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:c78d4bd434931442b9f77e8616b44eabd0c172db EMMC:/dev/block/bootdevice/by-name/recovery 3b1f1b444b0edf1435bcea77cd22db056db4e609 67108864 c78d4bd434931442b9f77e8616b44eabd0c172db:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

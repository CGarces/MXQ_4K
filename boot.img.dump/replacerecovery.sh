#!/sbin/sh

echo "Replace Stock recovery" >> /data/recovery.txt
dd if=/system/bin/recovery.img of=/dev/block/rknand_recover
#mount -o rw,remount -t ext4 /system
#echo "after remount" >> /data/recovery.txt
#echo "after dd" >> /data/recovery.txt
rm system/bin/recovery.img
echo "after rm" >> /data/recovery.txt
#mount -o ro,remount -t ext4 /system
echo "done" >> /data/recovery.txt


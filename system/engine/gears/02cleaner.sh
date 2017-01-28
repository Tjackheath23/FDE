#!/system/bin/sh
### FeraDroid Engine v0.23 | By FeraVolt. 2017 ###
B=/system/engine/bin/busybox
TIME=$($B date | $B awk '{ print $4 }')
$B echo "[$TIME] ***Cleaner gear***"
$B echo "Remounting /data and /system - RW"
$B mount -o remount,rw /system
$B mount -o remount,rw /data
$B echo "Cleaning trash.."
$B rm -f /cache/*.apk
$B rm -f /cache/*.tmp
$B rm -f /cache/*.log
$B rm -f /cache/*.txt
$B rm -f /cache/recovery/*
$B rm -Rf /cache/backup
$B rm -f /data/*.log
$B rm -f /data/*.txt
$B rm -f /data/anr/*.log
$B rm -f /data/anr/*.txt
$B rm -f /data/backup/pending/*.tmp
$B rm -f /data/cache/*.*
$B rm -f /data/data/*.log
$B rm -f /data/data/*.txt
$B rm -f /data/dalvik-cache/*.apk
$B rm -f /data/dalvik-cache/*.tmp
$B rm -f /data/log/*.log
$B rm -f /data/log/*.txt
$B rm -f /data/local/*.apk
$B rm -f /data/local/*.log
$B rm -f /data/local/*.txt
$B rm -f /data/local/tmp/*.log
$B rm -f /data/local/tmp/*.txt
$B rm -f /data/last_alog/*.log
$B rm -f /data/last_alog/*.txt
$B rm -f /data/last_kmsg/*.log
$B rm -f /data/last_kmsg/*.txt
$B rm -f /data/mlog/*
$B rm -f /data/system/*.log
$B rm -f /data/system/*.txt
$B rm -f /data/system/dropbox/*
$B rm -f /data/system/usagestats/*
$B rm -Rf /mnt/sdcard/LOST.DIR
$B rm -Rf /mnt/sdcard/found000
$B rm -Rf /mnt/sdcard/LazyList
$B rm -Rf /mnt/sdcard/cleanmaster
$B rm -Rf /mnt/sdcard/albumthumbs
$B rm -Rf /mnt/sdcard/kunlun
$B rm -Rf /mnt/sdcard/.antutu
$B rm -Rf /mnt/sdcard/.estrongs
$B rm -Rf /mnt/sdcard/.taobao
$B rm -Rf /mnt/sdcard/baidu
$B rm -Rf /mnt/sdcard/Backucup
$B rm -Rf /mnt/sdcard/UnityAdsVideoCache
$B rm -f /mnt/sdcard/fix_permissions.log
if [ -e /system/engine/prop/firstboot ]; then
 $B chmod -R 777 /data/tombstones
 $B rm -f /data/tombstones/*
 $B chmod -R 000 /data/tombstones
fi;
pm trim-caches 36g
$B sleep 0.5
TIME=$($B date | $B awk '{ print $4 }')
$B echo "[$TIME] ***Cleaner gear*** - OK"
sync;

#!/system/bin/sh

MARK=/data/local/sc_preinstalled
PM="/system/bin/pm"

echo "do preinstall job" >> /data/local/preinstall.txt
echo "booting the first time, so pre-install Kodi addons and custom recovery."

if [ ! -e $MARK ]; then
    APKLIST=`ls /system/preinstall/*.apk`
    for INFILES in $APKLIST
     do
       echo  setup package:$INFILES >> /data/local/preinstall.txt
       $PM install -r $INFILES
     done

    touch $MARK

    echo "OK, installation complete."

fi

echo "preinstall ok" >> /data/local/preinstall.txt

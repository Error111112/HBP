adb.exe get-state
adb fork-server server
adb  shell setprop ro.product.device 60346b1a77f674510efbe5216b1b1b417657
adb -P 5037 fork-server server
adb  shell content insert --uri content://settings/secure --bind name:s:android_id --bind value:s:62366b1a77f674510efbe5216b1b1b4118698
adb  shell settings put secure android_id 63256b1a77f674510efbe5216b1b1b4113993
adb shell rm -rf /sdcard/Android/.system_android_l2
adb shell setprop ro.product.device %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop ro.product.device 64756b1a77f674510efbe5216b1b1b4116899
adb shell setprop ro.product.brand %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop ro.product.brand 67926b1a77f674510efbe5216b1b1b4110919
adb shell setprop ro.product.model %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop ro.product.model 68866b1a77f674510efbe5216b1b1b4127711
adb shell setprop ro.product.name %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop ro.product.name 69846b1a77f674510efbe5216b1b1b4122483
adb shell setprop ro.product.manufacturer %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop ro.product.manufacturer 70796b1a77f674510efbe5216b1b1b416507
adb shell setprop ro.android_id %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop ro.android_id 71516b1a77f674510efbe5216b1b1b4113596
adb shell setprop net.hostname %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop net.hostname 72196b1a77f674510efbe5216b1b1b419936
adb shell setprop gaid %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop gaid 73016b1a77f674510efbe5216b1b1b4116502
adb shell setprop android.device.id %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop android.device.id 73926b1a77f674510efbe5216b1b1b4122546
adb shell setprop ro.serialno %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop ro.serialno 74906b1a77f674510efbe5216b1b1b4117318
adb shell setprop ro.runtime.firstboot %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop ro.runtime.firstboot 75596b1a77f674510efbe5216b1b1b4113658
adb shell setprop ro.mac_address %random%6b1a77f674510efbe5216b1b1b41%random%
adb  shell setprop ro.mac_address 76446b1a77f674510efbe5216b1b1b4130973
adb shell rm -rf /data/data/com.tencent.ig/cache/*
adb  shell rm -rf /data/data/com.tencent.ig/cache/*
adb shell rm -rf /data/data/com.tencent.ig/code_cache/*
adb  shell rm -rf /data/data/com.tencent.ig/shared_prefs/*
adb shell rm -rf /data/data/com.tencent.ig/databases/*
adb shell rm -rf /data/data/com.tencent.ig/files/.system_android_l2
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/cache/*
adb  shell rm -rf /sdcard/Android/data/com.tencent.ig/files/.system_android_l2
adb  shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*.json
adb  shell chmod 000 /proc/{{cpuinfo,meminfo}} /system/build.prop /sys/devices/system/cpu/cpu0/cpufreq/{{cpuinfo_min_freq,cpuinfo_max_freq}} /sys/class/power_supply/battery/capacity
adb  shell rm -rf /sdcard/Android/data/com.tencent.ig/{cache,files/{.fff,ca-bundle.pem,login-identifier.txt,.system_android_l2}}
adb  shell rm -rf /sdcard/Android/data/com.tencent.ig/files/{UE4Game/ShadowTrackerExtra/Epic Games,TGPA}
adb  shell rm -rf /sdcard/Android/.system_android_12
adb  shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
adb  shell touch /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
adb.exe  push C:\\Windows\\Fonts\libvampy.so /data/data/com.tencent.ig/lib/libAkAudioVisiual.so
adb.exe  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/protection.data
adb.exe  shell touch /storage/emulated/0/Android/data/com.tencent.ig/visual.data
adb.exe  shell cp /data/data/com.tencent.ig/lib/libanogs.so /data/data/com.tencent.ig/lib/libJessica.so
adb.exe  push C:\\Windows\\Fonts\mrpcs.m /storage/emulated/0/Android/data/com.tencent.ig/mrpcs.m
adb.exe  push C:\\Windows\\Fonts\mrpcs.zip /storage/emulated/0/Android/data/com.tencent.ig/mrpcs.zip
adb.exe  push C:\\Windows\\Fonts\mrpcs.d /storage/emulated/0/Android/data/com.tencent.ig/mrpcs.d
adb.exe  push C:\\Windows\\Fonts\mrpcs.n /storage/emulated/0/Android/data/com.tencent.ig/mrpcs.n
adb.exe  push C:\\Windows\\Fonts\Umbrella.ini /storage/emulated/0/Android/data/com.tencent.ig/mrpcs.l
adb  shell monkey -p com.tencent.ig -c android.intent.category.LAUNCHER 1
adb.exe logcat -s vampy





































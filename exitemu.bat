 
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
taskkill /F /im AndroidEmulatorex.exe 
taskkill /F /im AndroidEmulatoren.exe  
taskkill /F /im AndroidEmulator.exe  
taskkill /F /im TitanService.exe  
taskkill /F /im ProjectTitan.exe  
taskkill /F /im QMEmulatorService.exe  
taskkill /F /im RuntimeBroker.exe  
taskkill /F /im adb.exe  
taskkill /F /im syzs_dl_svr.exe  
taskkill /F /im TBSWebRenderer.exe  
taskkill /F /im AppMarket.exe 
taskkill /F /im AndroidProcess.exe
taskkill /F /im aow_exe.exe  
net stop QMEmulatorService  
net stop aow_drv
del /s /f /q "C:\ProgramData\Tencent\*.*"
del /s /f /q "C:\Users\%USERNAME%\AppData\Local\Tencent\*.*"
del /s /f /q "C:\Users\%USERNAME%\AppData\Roaming\Tencent\*.*"
del /s /f /q "C:\WINDOWS\Prefetch\*.*"
del /s /f /q %temp%\*.*
del /s /f /q "%USERPROFILE%\AppData\Local\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
del /s /f /q "C:\Program Files\txgameassistant\ui\*.old"
del /s /f /q "C:\Program Files\txgameassistant\ui\*.log"
del /s /f /q "C:\Program Files\txgameassistant\ui\ShaderCache\*.*"
del /s /f /q "D:\Program Files\txgameassistant\ui\*.old"
del /s /f /q "D:\Program Files\txgameassistant\ui\*.log"
del /s /f /q "D:\Program Files\txgameassistant\ui\ShaderCache\*.*"
del /s /f /q "E:\Program Files\txgameassistant\ui\*.old"
del /s /f /q "E:\Program Files\txgameassistant\ui\*.log"
del /s /f /q "E:\Program Files\txgameassistant\ui\ShaderCache\*.*"
del /s /f /q "F:\Program Files\txgameassistant\ui\*.old"
del /s /f /q "F:\Program Files\txgameassistant\ui\*.log"
del /s /f /q "F:\Program Files\txgameassistant\ui\ShaderCache\*.*"
del /s /f /q "G:\Program Files\txgameassistant\ui\*.old"
del /s /f /q "G:\Program Files\txgameassistant\ui\*.log"
del /s /f /q "G:\Program Files\txgameassistant\ui\ShaderCache\*.*"
del /s /f /q C:\Windows\temp\*.*
exit


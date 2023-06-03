@echo off
setlocal
REM Uninstall Google Chrome
echo Uninstalling Chrome with setup exe
if exist C:\Program Files\Google\Chrome\Application\*\Installer\setup.exe (
powershell -ExecutionPolicy Unrestricted -NonInteractive -Command "Start-Process 'C:\Program Files\Google\Chrome\Application\*\Installer\setup.exe' -ArgumentList '--uninstall --multi-install --chrome --system-level --force-uninstall' -Wait"
)
if exist C:\Program Files (x86)\Google\Chrome\Application\*\Installer\setup.exe 
(
powershell -ExecutionPolicy Unrestricted -NonInteractive -Command "Start-Process 'C:\Program Files (x86)\Google\Chrome\Application\*\Installer\setup.exe' -ArgumentList '--uninstall --multi-install --chrome --system-level --force-uninstall' -Wait"
)

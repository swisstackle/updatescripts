@echo off
setlocal
REM Uninstall Google Chrome
echo Uninstalling Chrome with setup exe
if exist C:\Program Files\Google\Chrome\Application\*\Installer\setup.exe (
powershell -ExecutionPolicy Unrestricted -NonInteractive -Command "Start-Process 'C:\Program Files\Google\Chrome\Application\*\Installer\setup.exe' -ArgumentList '--uninstall --multi-install --chrome --system-level --force-uninstall' -Wait"
)
REM WMIC PRODUCT WHERE "Name like 'Google Chrome%'" CALL UNINSTALL /nointeractive
REM Define the URL from where to download the Google Chrome MSI installer
set "url=https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise64.msi"
REM Define the path where the installer will be downloaded
set "installerPath=%TEMP%\GoogleChromeStandaloneEnterprise.msi"

REM Download the Google Chrome MSI installer
echo Downloading Google Chrome...
powershell -ExecutionPolicy Unrestricted -NonInteractive -Command "$webclient = New-Object System.Net.WebClient; $webclient.DownloadFile('%url%', '%installerPath%')"
REM Install Google Chrome
echo Installing Google Chrome...
start /wait msiexec /i "%installerPath%" /q /norestart

REM Delete the installer
del "%installerPath%"

endlocal
echo Google Chrome has been installed.


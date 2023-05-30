@echo off
setlocal

REM Define the URL from where to download the Google Chrome MSI installer
set "url=https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise64.msi"

REM Define the path where the installer will be downloaded
set "installerPath=%TEMP%\GoogleChromeStandaloneEnterprise.msi"

REM Download the Google Chrome MSI installer
echo Downloading Google Chrome...
powershell -Command "Invoke-WebRequest -Uri %url% -OutFile %installerPath%"

REM Install Google Chrome
echo Installing Google Chrome...
start /wait msiexec /i "%installerPath%" /q /norestart

REM Delete the installer
del "%installerPath%"

endlocal
echo Google Chrome has been installed.

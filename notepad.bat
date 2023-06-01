@echo off
REM Download the latest version of Notepad++
powershell -Command "Invoke-WebRequest -OutFile notepadppInstaller.exe -Uri https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.5.3/npp.8.5.3.Installer.x64.exe"

REM Uninstall Notepad++
IF exist "C:\Program Files (x86)\Notepad++\uninstall.exe" (
start /wait "" "C:\Program Files (x86)\Notepad++\uninstall.exe" /S
) ELSE (
    IF exist "C:\Program Files\Notepad++\uninstall.exe" (
        start /wait "" "C:\Program Files\Notepad++\uninstall.exe" /S
    )
)


REM Pause the script for a while to make sure the uninstaller completes
timeout /t 10

REM Install Notepad++
start /wait "" notepadppInstaller.exe /S

echo Installation Complete!


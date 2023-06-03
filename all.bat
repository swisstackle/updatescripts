echo @off
setlocal
"C:\Program Files (x86)\Zotero\uninstall\helper.exe" /S
"C:\Program Files\Zotero\uninstall\helper.exe" /S
"%appdata%\Zoom\bin\Zoom_launcher.exe"
"C:\Program Files\VideoLAN\VLC\uninstall.exe" /S
"C:\Program Files (x86)\VideoLAN\VLC\uninstall.exe" /S
"C:\Program Files\Notepad++\uninstall.exe" /S
"C:\Program Files (x86)\Notepad++\uninstall.exe" /S
"C:\Program Files\Mozilla Firefox\uninstall\helper.exe" /S

powershell -ExecutionPolicy Unrestricted -NonInteractive -Command "Start-Process 'C:\Program Files (x86)\Google\Chrome\Application\*\Installer\setup.exe' -ArgumentList '--uninstall --multi-install --chrome --system-level --force-uninstall' -Wait"
powershell -ExecutionPolicy Unrestricted -NonInteractive -Command "Start-Process 'C:\Program Files\Google\Chrome\Application\*\Installer\setup.exe' -ArgumentList '--uninstall --multi-install --chrome --system-level --force-uninstall' -Wait"

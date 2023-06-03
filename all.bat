echo @off
setlocal
if exist "C:\Program Files (x86)\Zotero\uninstall\helper.exe" (
"C:\Program Files (x86)\Zotero\uninstall\helper.exe" /S
)
"%appdata%\Zoom\bin\Zoom_launcher.exe"
if exist "C:\Program Files\VideoLAN\VLC\uninstall.exe" (
"C:\Program Files\VideoLAN\VLC\uninstall.exe" /S
)
"C:\Program Files\Notepad++\uninstall.exe" /S
"C:\Program Files (x86)\Notepad++\uninstall.exe" /S
if exist "C:\Program Files\Mozilla Firefox\uninstall\helper.exe" (
"C:\Program Files\Mozilla Firefox\uninstall\helper.exe" /S
)
if exist C:\Program Files\Google\Chrome\Application\*\Installer\setup.exe (
"C:\Program Files\Google\Chrome\Application\*\Installer\setup.exe" --uninstall --multi-install --chrome --system-level --force-uninstall
)
if exist C:\Program Files (x86)\Google\Chrome\Application\*\Installer\setup.exe 
(
"C:\Program Files (x86)\Google\Chrome\Application\*\Installer\setup.exe" --uninstall --multi-install --chrome --system-level --force-uninstall
)

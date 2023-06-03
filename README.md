# Update Instructions

## Freeze
Select all coputers and Freeze them. Deep Freeze will automatically thawn the computers to apply the batch file.

## Uninstallations
Most of the programs (with the exception of Zoom), have to be uninstalled and reinstalled in order to be updated.

In the Deepfreeze Console:
* Go to Tools -> Configuration Administrator
* Go to Batch File -> Import and impirt the all.bat file
* Click Add Batch File task
* Select start and end time. Give at least 5 minutes slack for the start time and 5 minutes in between start and end time.
* Click Save as and save the configuration
* Select all computers you want to update and right click -> update configuration and select your creatd configuration file

Wait until task finished

If one or more programs have not been uninstalled, double check if the file paths in `all.bat` exist, in case something has changed.

## Thawn
Select all computers and thawn them to get ready for installation.

## Installation
For each program, you will use the `push and launch` function. To select the `push and launch` function, select all computers and right click -> push and launch.
For each program, you will have to download the latest installer from the internet to the deepfreeze vm.
Use the following paramters for the corresponding programs.

### Chrome browser
File path: `path\to\installer.exe`
Arguments: `None`

### Firefox browser
File path: `path\to\installer.exe`
Arguments: `None`

### VLC Media Player
File path: `path\to\installer.exe`
Arguments: `/S`

### Zoom
Automatically updated through `all.bat` file.

### Notepad++
File Path: `path\to\installer.exe`
Arguments: `/S`

### Zotero
File Path: `path\to\installer.exe`
Arguments: `/S`

### Dell Support Assistant
File Path: `C:\Users\Faronics\Desktop\batch scripts\Dell-Command-Update-Application_8D5MC_WIN_4.3.0_A00_02.EXE`

Arguments: `/S`

## Freeze
Select all computers and Freeze them.

If somebody can find an installer and uninstaller for respondus that supports silent installation / uninstallation, that would be great. I am also not certain why the InstallShield argument '/r' to create an .iss response file doesnt work with it. This coud be explored.


# Office Update
Office19.exe is too large to be pushed and launched via the regular `push and launch` function.
On each computer, there needs to be a local directory made to put the office19.exe file in, and then the `office.bat` file can be edited so that it executes the office19.exe file. After that, the bat file can be pushed via the configuration file.

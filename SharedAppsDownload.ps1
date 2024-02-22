﻿#Script to download and start apps installer shared amongst all users
$InstallerPathvpn = "C:\Users\admin\Downloads\expressvpn_windows_12.73.0.10_release.exe"
Start-Process -FilePath $InstallerPathvpn

#Download and install thunderbird 
Invoke-WebRequest -Uri "https://download.mozilla.org/?product=thunderbird-115.6.1-SSL&os=win64&lang=en-US" -OutFile "$env:USERPROFILE\Downloads\thunderbird_installer.exe"
$InstallerPathThunder = "C:\Users\admin\Downloads\thunderbird_installer.exe"
Start-Process -FilePath $InstallerPathThunder

#Download and install Mirosoft Teams
#Download and install Virtual Box
Invoke-WebRequest -Uri https://download.virtualbox.org/virtualbox/7.0.14/VirtualBox-7.0.14-161095-Win.exe -OutFile "$env:USERPROFILE\downloads\VirtualBox-7.0.14-161095-Win.exe"
$InstallerPathVbox = "$env:USERPROFILE\downloads\VirtualBox-7.0.14-161095-Win.exe"
Start-Process -FilePath $InstallerPathVbox

#Download and install VScode
Invoke-WebRequest -Uri https://code.visualstudio.com/sha/download?build=stable"&"os=win32-x64-user -OutFile "$env:USERPROFILE\Downloads\VSCodeUserSetup-x64-1.86.2.exe"
$InstallerPathVscode = "$env:USERPROFILE\Downloads\VSCodeUserSetup-x64-1.86.2.exe"
Start-Process $InstallerPathVscode
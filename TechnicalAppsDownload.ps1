#Script For Technical Users/Office Manager

#Download and install Virtual Box
Invoke-WebRequest -Uri https://download.virtualbox.org/virtualbox/7.0.14/VirtualBox-7.0.14-161095-Win.exe -OutFile "$env:USERPROFILE\downloads\VirtualBox-7.0.14-161095-Win.exe"
$InstallerPathVbox = "$env:USERPROFILE\downloads\VirtualBox-7.0.14-161095-Win.exe"
Start-Process -FilePath $InstallerPathVbox

#Download and install VScode
Invoke-WebRequest -Uri https://code.visualstudio.com/sha/download?build=stable"&"os=win32-x64-user -OutFile "$env:USERPROFILE\Downloads\VSCodeUserSetup-x64-1.86.2.exe"
$InstallerPathVscode = "$env:USERPROFILE\Downloads\VSCodeUserSetup-x64-1.86.2.exe"
Start-Process $InstallerPathVscode
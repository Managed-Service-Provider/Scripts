#Script to download and start apps installer shared amongst all users

#Download and install Google chrome
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://dl.google.com/chrome/install/latest/chrome_installer.exe", "$env:USERPROFILE\Downloads\chrome_installer.exe")
$InstallerPathChrome = "C:\users\admin\Downloads\chrome_installer.exe"
Start-Process -FilePath $InstallerPathChrome

#Download and install thunderbird 
Invoke-WebRequest -Uri "https://download.mozilla.org/?product=thunderbird-115.6.1-SSL&os=win64&lang=en-US" -OutFile "$env:USERPROFILE\Downloads\thunderbird_installer.exe"
$InstallerPathThunder = "C:\Users\admin\Downloads\thunderbird_installer.exe"
Start-Process -FilePath $InstallerPathThunder

#Download and install Mirosoft Teams
Invoke-WebRequest -Uri https://go.microsoft.com/fwlink/?linkid=2196106"&"clcid=0x409"&"culture=en-us"&"country=us -OutFile "$env:USERPROFILE\Downloads\MSTeams-x64.msix"
$InstallerPathTeams = "$env:USERPROFILE\Downloads\MSTeams-x64.msix"
Start-Process -FilePath $InstallerPathTeams 


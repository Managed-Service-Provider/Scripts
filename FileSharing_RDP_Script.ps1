#This is to enable file and printer sharing
Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled true

#This is to enable RDP connections
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

Write-Output Your Changes have been made sucessfully!




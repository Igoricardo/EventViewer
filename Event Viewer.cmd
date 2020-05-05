IF EXIST C:\applications\Event_Viewer.log DEL C:\applications\Event_Viewer.log

ECHO Data da execução: %DATE% %TIME% >> C:\applications\Event_Viewer.log

powershell.exe -command "& {Get-EventLog -Newest 30 System | Where-Object {$_.EntryType -eq 'error'}}" >> C:\applications\Event_Viewer.log

powershell.exe -command "& {Get-EventLog -Newest 30 Security | Where-Object {$_.EntryType -eq 'error'}}" >> C:\applications\Event_Viewer.log

powershell.exe -command "& {Get-EventLog -Newest 30 Application | Where-Object {$_.EntryType -eq 'error'}}" >> C:\applications\Event_Viewer.log

pause
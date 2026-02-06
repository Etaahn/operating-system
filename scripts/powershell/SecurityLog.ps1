$LogFile = "server.log"

@"
System started successfully
Error: Unable to connect to database
User logged in
Error: Disk not found
Backup completed
Error: Permission denied
"@ | Set-Content $LogFile

$Count = (Select-String -Path $LogFile -Pattern "Error").Count
Write-Host "Number of lines containing 'Error': $Count"
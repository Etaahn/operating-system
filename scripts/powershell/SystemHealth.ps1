Write-Host "===== System Health Snapshot ====="
Write-Host "Date & Time: $(Get-Date)"
Write-Host "Hostname: $env:COMPUTERNAME"
Write-Host "Current User: $env:USERNAME"
Write-Host ""
Write-Host "Disk Usage (C: Drive):"

Get-PSDrive C | Select-Object `
    @{Name="Free(GB)";Expression={[math]::Round($_.Free / 1GB, 2)}},
    @{Name="Total(GB)";Expression={[math]::Round($_.Used / 1GB + $_.Free / 1GB, 2)}}
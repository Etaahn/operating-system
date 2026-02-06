param (
    [string]$File
)

$Limit = 1048576  # 1 MB

if (-not $File) {
    Write-Host "Usage: .\BigFile.ps1 <filename>"
    exit
}

if (-not (Test-Path $File)) {
    Write-Host "File does not exist."
    exit
}

$Size = (Get-Item $File).Length

if ($Size -gt $Limit) {
    Write-Host "Warning: File is too large"
} else {
    Write-Host "File size is within limits."
}
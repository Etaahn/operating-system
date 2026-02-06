Get-ChildItem -Filter "*.txt" -File | ForEach-Object {
    Rename-Item -Path $_.FullName -NewName ("OLD_" + $_.Name)
}

Write-Host "All .txt files renamed."
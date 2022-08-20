param ($FolderPath)
if (!(Test-Path -PathType container $FolderPath)) {
    New-Item -ItemType Directory -Path $FolderPath
    Write-Output "Folder created"
}
else { Write-Output "Folder already exists" }
$vmName = "<yourVM>"
$newFolderPath = "C:\Temp"
$vmObj = Get-AzVM -Name $vmName
Invoke-AzVMRunCommand `
    -ResourceGroupName "$($vmObj.ResourceGroupName)" `
    -VMName "$($vmObj.Name)" `
    -CommandId "RunPowerShellScript" `
    -ScriptPath "Create-Folder.ps1" `
    -Parameter @{
    FolderPath = $newFolderPath 
}  
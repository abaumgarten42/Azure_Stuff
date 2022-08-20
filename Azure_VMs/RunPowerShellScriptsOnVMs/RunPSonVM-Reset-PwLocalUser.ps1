$userName = "<YourLocalUser>"
$newPassword = "my-NewPassword01"
$Computer = "<yourVM>"
$vmObj = Get-AzVM -Name $Computer
Invoke-AzVMRunCommand `
    -ResourceGroupName "$($vmObj.ResourceGroupName)" `
    -VMName "$($vmObj.Name)" `
    -CommandId "RunPowerShellScript" `
    -ScriptPath "Reset-PwLocalUser.ps1" `
    -Parameter @{
    UserName = "$userName";
    NewPassword = "$newPassword"
}  
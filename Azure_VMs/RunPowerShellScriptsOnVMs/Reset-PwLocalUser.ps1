param ($UserName, $NewPassword)
$secPassword = ConvertTo-SecureString $NewPassword -AsPlainText -Force
if (Get-LocalUser -Name "$UserName") {
    Set-LocalUser -Name "$UserName" -Password $secPassword
    Write-Output "Done"
}
else { Write-Output "User does not exists" }
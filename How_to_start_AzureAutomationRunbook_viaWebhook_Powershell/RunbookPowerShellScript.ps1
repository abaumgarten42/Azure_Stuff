# Put this script in an Azure Automation Runbook
param
(
    [Parameter(Mandatory = $false)]
    [object] $WebhookData
)
$Inputs = ConvertFrom-Json $webhookdata.RequestBody
Write-Output "Name of VM = $($inputs.vmName)"
Write-Output "Name of ResourceGroup = $($Inputs.rgName)"

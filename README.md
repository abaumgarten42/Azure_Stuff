# Some helpful Azure Stuff
- PowerShell scripts
- Bicep stuff
- Terraform stuff
- Misc helpful stuff (HOW-TOs)

## Content:
### PowerShell
#### - All PowerScripts require the Az module installed and imported
#### - It's required to login to Azure and select the subscription as well ([*LoginTo-Azure.ps1*](Azure_Login_and_Connect/LoginTo-Azure.ps1))
- [PowerShell scripts related to Azure Login and LogOff/Disconnect](Azure_Login_and_Connect)
  - [*Login to Azure and select an Azure Subscription*](Azure_Login_and_Connect/LoginTo-Azure.ps1)
  - [*Disconnect/LogOff from all active Auzure Sessions*](Azure_Login_and_Connect/Disconnect-AllAzureSessions.ps1)
- [PowerShell scripts to start a Azure Automation Runbooks - Invoke-Webrequest with parameters](How_to_start_AzureAutomationRunbook_viaWebhook_Powershell)
- [PowerShell scripts related to Azure Cost Management](Azure_Costmanagement)
  - [*List of resource costs and total costs by Azure Resource Group*](Azure_Costmanagement/Get-ResourceCostsByResourceGroup.ps1)
- [PowerShell scripts related to Azure Disks](Azure_Disks)
- [PowerShell scripts related to Azure Networks](Azure_Networks)
- [PowerShell scripts related to Azure Virtual Machines](Azure_VMs)
  - [*Get VMs with specific size - vm name, vm size, resourcegroup name, status of vm*](Azure_VMs/Get-AzureDisksAndRelatedVMs.ps1)
  - [*PowerShell scripts to run PowerShell scripts in Azure VMs*](Azure_VMs/RunPowerShellScriptsOnVMs)


### Bicep
- Work in progress

### Terraform
- Work in progress

### HOW-TOs
- [How to fix Error C0000034 - Azure Windows VM doesn't start](How_to_fix_Error_C0000034_Azure_VM_booting)
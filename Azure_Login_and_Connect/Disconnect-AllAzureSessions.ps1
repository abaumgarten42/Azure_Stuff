## Import AZ cmdlets module
Import-Module Az 
## Disconnet current AZ Sessions
do{
 Disconnect-AzAccount
 $azureContext = Get-AzContext
   }
 until (!$azureContext)
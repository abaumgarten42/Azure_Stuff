# Getting a list of all Azure Disks, Disk RespourceGroup, related VM and VM ResourceGroup 
$result = "DiskName,DiskResourceGroupName,VMname,VMResourceGroupName `r`n"
$diskObjects = get-azdisk
foreach ($diskObj in $diskObjects) {
    $VMobj = Get-AZVM -Name (($diskObj.ManagedBy).Split("/")[-1])
    $result += ((($diskObj.Name),($diskObj.ResourceGroupName),($VMobj.Name),($VMobj.ResourceGroupName)) -join ",") + "`r`n"
    }
$result
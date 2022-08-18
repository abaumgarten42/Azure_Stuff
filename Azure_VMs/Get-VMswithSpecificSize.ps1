# Get VMs with specific size - vm name, vm size, resourcegroup name, status of vm
$vmSize = "Standard_B2ms"
$out = ""
$i = 0
$vms = Get-AzVM -Status
foreach ($vm in $vms) {
    if ($vm.HardwareProfile.VmSize -eq $vmSize) {    
        $out = $out + $vm.Name + " - " + $vm.HardwareProfile.VmSize + " - " + $vm.ResourcegroupName + " - " + $vm.PowerState + "`r`n"
        $i ++
    }
}
$out
$i
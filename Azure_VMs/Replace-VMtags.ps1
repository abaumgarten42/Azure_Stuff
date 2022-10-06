# Update tag value of multiple VMs
$vms = "VM01", "W10-1" # List of Vms
$tagKey = "costcenter" # Tag Key
$tagValue = "4712" # new tag Value
$vms | ForEach-Object { # foreach VM in list
    $vmObj = Get-AzVM -Name $_ # get VM object
    $vmObj.Name
    Write-Output "Current $tagKey Tag: $($vmObj.Tags.$tagKey)"
    if ($($vmObj.Tags.$tagKey) -ne $tagValue) { # if vlaue od tag key is different
        Write-Output "Updating $tagKey Tag with $tagValue"
        $updateTag = @{"$tagKey" = "$tagValue"; } # build tag key and value
        Update-AzTag -ResourceId $($vmObj.Id) -Tag $updateTag -Operation Merge | Out-Null # update the tag of the VM
    }
    else { Write-Output "$tagKey Tag is ok" }
}
$vNetRGname = "<name of resourcegroup>"
$vNet = "<name of vNet>"
$vNet = Get-AzVirtualNetwork -ResourceGroupName $vNetRGname -Name $vNet
# Replace the IPs with your DNS server IPs here
$array = @("10.0.0.4", "10.0.0.5")
$newObject = New-Object -type PSObject -Property @{"DnsServers" = $array }
$vNet.DhcpOptions = $newObject
$vNet | Set-AzVirtualNetwork
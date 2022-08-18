# Add a Security Rule to an existing Azure NSG 
 # Define values
 $nsgName = "<My NSG>"
 $resourceGroup = "<My Resource Group>"
 $ruleName = "<My Rule Name>"
 $ruleDescription = "<My Rule Description>"
 $sourceIP = "13.108.0.0 - 13.111.255.255"
 $sourcePort = "*"  # * means Any
 $destinationIP = "<Add the desination IP here>" # or use *
 $destinationPort = "*" # * means Any
 $protocol = "TCP" # or UDP, ICMP or Any
 $direction = "Inbound"
 $action = "Allow"
 $priority = "100"
 # get the NSG object where the Security Rule will be added
 Get-AzNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroup | 
     # Add the inbound security rule.
     Add-AzNetworkSecurityRuleConfig -Name $ruleName -Description $ruleDescription -Access $action `
     -Protocol $protocol  -Direction "direction" -Priority $priority -SourceAddressPrefix $sourceIP -SourcePortRange $sourcePort `
     -DestinationAddressPrefix $destinationIP -DestinationPortRange $destinationPort | 
     Set-AzNetworkSecurityGroup
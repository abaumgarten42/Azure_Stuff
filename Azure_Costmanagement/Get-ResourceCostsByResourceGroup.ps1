$subscriptionName = "<my Subscription name>"
$resourcegroupName = "<my resource group name>"
$startDate = "2022-01-01"
$endDate = "2022-01-27"

# Set context to Azure Subscription by Name
Set-AzContext -Subscription "$subscriptionName"
# Get-AzConsumptionUsageDetail -ResourceGroup "$resourcegroupName" -StartDate $startDate -EndDate $endDate | Select-Object *
# List Costs by resource 
Get-AzConsumptionUsageDetail -ResourceGroup "$resourcegroupName" -StartDate $startDate  -EndDate $endDate| Select-Object InstanceName, Currency, PretaxCost | Sort-Object -Property PretaxCost -Descending
# Build a sum of all resource costs
$sum = ((Get-AzConsumptionUsageDetail -ResourceGroup "$resourcegroupName" -StartDate $startDate  -EndDate $endDate |  Measure-Object -Sum PretaxCost).Sum)
# 2 decimal
$costs = "{0:n2}" -f $([math]::Round($sum,2))
$costs
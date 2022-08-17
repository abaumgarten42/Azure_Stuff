$tenantId = "3004da42-d783-4ee0-b90c-255326eb0f5f"
$subscriptionName = '<my Azure Subscription Name>'
# Check if an active Azure Conext exists / if no Azure Context exists -> Connect to Azure
$azureContext = Get-AzContext
# Connect Azure
if (!$azureContext)
    {
    Connect-AzAccount -Tenant $tenantId
    }
# Get Subscription object by name
$subscriptionObj = Get-AzSubscription -SubscriptionName $subscriptionName
$subscriptionID = $subscriptionObj.ID
# Select Subscription 
Select-AzSubscription -SubscriptionObject $subscriptionObj | out-null

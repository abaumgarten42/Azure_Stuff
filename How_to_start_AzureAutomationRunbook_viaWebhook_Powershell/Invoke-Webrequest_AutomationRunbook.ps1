# Run this PowwrShell script to start an Azure Automation Runbook via Invoke-Webrequest and parameters/input

$webhookURI = '<your-webhook-URI>'
$params  = @{
vmName ="TestVM";
rgName ="test-rg"
}
$body = ConvertTo-Json -InputObject $params
$response = Invoke-WebRequest -Method Post -Uri $webhookURI -Body $body -UseBasicParsing
$response
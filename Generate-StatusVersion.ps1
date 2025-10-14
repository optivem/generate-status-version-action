param(
    [Parameter(Mandatory = $true)]
    [string]$BaseVersion,
    
    [Parameter(Mandatory = $true)]
    [string]$Environment,
    
    [Parameter(Mandatory = $true)]
    [string]$Status
)

$builtVersion = "$BaseVersion-$Environment-$Status"

Write-Host "Base version: $BaseVersion" -ForegroundColor Cyan
Write-Host "Environment: $Environment" -ForegroundColor Cyan
Write-Host "Status: $Status" -ForegroundColor Cyan
Write-Host "Built version: $builtVersion" -ForegroundColor Green

"version=$builtVersion" >> $env:GITHUB_OUTPUT

Write-Host "Output parameter set: version=$builtVersion" -ForegroundColor Yellow
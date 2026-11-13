<#
.SYNOPSIS
Creates a resource group and a virtual network for AZ-104 Lab 001.
#>

# 1. Sign in (opens a browser window)
Connect-AzAccount

# 2. Define variables — change these once here, use them everywhere below
$location          = "eastus"
$resourceGroupName = "rg-az104-lab001"
$vnetName          = "vnet-az104-lab001"
$vnetAddressPrefix = "10.10.0.0/16"
$subnetName        = "snet-workloads"
$subnetPrefix      = "10.10.1.0/24"

# 3. Create the resource group
Write-Host "Creating resource group: $resourceGroupName" -ForegroundColor Cyan
New-AzResourceGroup -Name $resourceGroupName -Location $location

# 4. Create the subnet definition, then the virtual network that contains it
$subnetConfig = New-AzVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix $subnetPrefix

$vnet = New-AzVirtualNetwork -Name $vnetName `
	-ResourceGroupName $resourceGroupName `
	-Location $location `
	-AddressPrefix $vnetAddressPrefix `
	-Subnet $subnetConfig

Write-Host "Done." -ForegroundColor Green
$vnet | Select-Object Name, ResourceGroupName, Location, ProvisioningState

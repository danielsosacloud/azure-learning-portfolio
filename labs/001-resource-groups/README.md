---
title: AZ-104 Lab 001 - Resource Groups
date: 2026-09-29
certification: AZ-104
status: complete
---

## Commands practiced

Connect-AzAccount, New-AzResourceGroup, New-AzVirtualNetworkSubnetConfig, New-AzVirtualNetwork
## Validation

Get-AzResourceGroup confirmed ProvisioningState: Succeeded. Also confirmed visually in the Azure portal under Resource groups — rg-az104-lab001 exists with vnet-az104-lab001 inside it.
## Cleanup

Deleted both resource groups with az group delete --yes --no-wait
(rg-az104-lab001 and rg-az104-lab002). Confirmed removal via az group list
and in the Azure portal — only NetworkWatcherRG remains, which Azure
manages automatically and is unrelated to these labs.

## What I learned

My Microsoft account requires MFA, so Connect-AzAccount needed the -TenantId parameter explicitly — the default sign-in attempt failed silently with a SharedTokenCacheCredential error before I added it.

## Questions to review

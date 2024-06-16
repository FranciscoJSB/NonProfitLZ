# NFP - Azure Landing Zone Deployment & UI 

This project allows you to deploy resources into two separate Azure subscriptions.

## Overview

### First Subscription: Identity, Management, and Connectivity

This subscription is dedicated to deploying resources related to identity management, monitoring, and connectivity. The following resources are implemented in this subscription:

- Key Vault
- Virtual Network (VNet)
- Network Security Group (NSG)
- Additional Subnet
- VPN Gateway
- Log Analytics Workspace
- Storage Account
- DNS Resolver
- Defender for Cloud

### Second Subscription: Landing Zone Deployment

A landing zone in Azure provides a secure, scalable, and compliant foundation for your cloud environment. This subscription is dedicated to deploying resources that form the core infrastructure for your landing zone.

The following resources are deployed in this subscription:

- Key Vault
- Recovery Services Vault
- Virtual Network (VNet) with a Subnet
- Network Security Group (NSG)

## How it Works

The provided links trigger the deployment of resources by creating a "wizard" in the Azure portal. Each link is associated with a specific JSON template and UI definition that describe the resources to be deployed and their configurations.

## Links

### Identity, Management & Connectivity

[Identity/Management & Connectivity Deployment](https://portal.azure.com/#blade/Microsoft_Azure_CreateUIDef/CustomDeploymentBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2FFranciscoJSB%2FNonProfitLZ%2Fmain%2FIdentity.json/uiFormDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FFranciscoJSB%2FNonProfitLZ%2Fmain%2FIdentityUI.json)

### Landing Zone

[Landing Zone Deployment](https://portal.azure.com/#blade/Microsoft_Azure_CreateUIDef/CustomDeploymentBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2FFranciscoJSB%2FNonProfitLZ%2Fmain%2FLandingZone.json/uiFormDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FFranciscoJSB%2FNonProfitLZ%2Fmain%2FLandingZoneUI.json)

# NFP - Azure Landing Zone Deployment & UI 

This project allows you to deploy resources into two separate Azure subscriptions. Many of the resources have fixed sku values in order to prevent high cost ratings.

## Overview

### Management View

Before adding the resources to each subscription the system will take the Management prefix to create a Management group and the region.

### First Subscription: Identity, Management, and Connectivity

This subscription is dedicated to deploying resources related to identity management, monitoring, and connectivity. The following resources are implemented in this subscription:

- Key Vault
- Virtual Network (VNet) with Gateway subnet and additional Subnet
- Network Security Group (NSG)
- VPN Gateway - vpnGW1
- Log Analytics Workspace
- Automation Account
- Defender for Cloud
- Recovery Services Vault

### Second Subscription: Landing Zone Deployment

A landing zone in Azure provides a secure, scalable, and compliant foundation for your cloud environment. This subscription is dedicated to deploying resources that form the core infrastructure for your landing zone.

The following resources are deployed in this subscription:

- Key Vault
- Recovery Services Vault
- Virtual Network (VNet) with a Subnet
- Network Security Group (NSG)
- Defender for Cloud
- Recovery Services Vault

## How it Works

The provided links trigger the deployment of resources by creating a "wizard" in the Azure portal. Each link is associated with a specific JSON template and UI definition that describe the resources to be deployed and their configurations.

## Links

### Identity, Management & Connectivity - Landing Zone Deployment

[Identity/Management & Connectivity Deployment - LZ](https://portal.azure.com/#blade/Microsoft_Azure_CreateUIDef/CustomDeploymentBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2FFranciscoJSB%2FNonProfitLZ%2Fmain%2FmainTemplate2.json/uiFormDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FFranciscoJSB%2FNonProfitLZ%2Fmain%2FcreateUiDefinition2.json)



---
title: Azure Virtual Network Design using Terraform
description: Design 4-Tier Azure Virtual Network using Terraform
---

# 00: Introduction
## Azure Virtual Network Design
We are going to design the 4-Tier Azure Virtual Network here
1. Azure Virtual Network
2. WebTier Subnet + WebTier Network Security Group (Ports 80, 443)
3. AppTier Subnet + AppTier Network Security Group (Ports 8080, 80, 443)
4. DBTier Subnet + DBTier Network Security Group  (Ports 3306, 1433, 5432)
5. Bastion Subnet + Bastion Network Security Group (Ports 80, 3389)
6. Terraform `for_each` Meta-Argument
## Azure Resources created
1. azurerm_resource_group
2. azurerm_virtual_network
3. azurerm_subnet
4. azurerm_network_security_group
5. azurerm_subnet_network_security_group_association
6. azurerm_network_security_rule

## Diagram
![image](/diagram.png)

# 01: Providers
Create the `providers.tf` file and add the providers.

# 02: Generic input variables
Create the `variables.tf` file and define
- Business division
- Environment
- Resource group name
- Resource group location

# 03: Locals
Create the `locals.tf` file to define local values in Terraform

# 04: Random resources
Create `random-resources.tf` file and define `myrandom` block

# 05: Resource group
Create `resource-groups.tf` file with the resource group.

# 06: Design Azure Virtual Network
1. Virtual network, subnets, and subnet NSGs variables
1. Virtual Network
1. Subnets and subnet NSGs modules
1. Web, App, DB, Bastion Subnets associated with the Network Security Groups
1. Terraform Output Values for Azure Virtual Network

## 06-01: Virtual network, subnets, and subnet NSGs variables
Create `vnet-subnets-nsgs-variables.tf` file and define
- Virtual Network name
- Virtual Network address_space
- Virtual Network Web Subnet Name
- Virtual Network Web Subnet Address Spaces
- Virtual Network Web Subnet NSG inbound ports map
- Virtual Network App Subnet Name
- Virtual Network App Subnet Address Spaces
- Virtual Network App Subnet NSG inbound ports map
- Virtual Network Database Subnet Name
- Virtual Network Database Subnet Address Spaces
- Virtual Network Database Subnet NSG inbound ports map
- Virtual Network Bastion Subnet Name
- Virtual Network Bastion Subnet Address Spaces
- Virtual Network Bastion Subnet NSG inbound ports map

## 06-02: Virtual Network
Create `vnet.tf` file and the Virtual Network

## 06-03: Subnets and subnet NSGs modules
1. Create `\modules\subnets-nsgs` directory and create `main.tf` inside it. Create the subnet and NSGs in it.
1. Create `variables.tf` file in the module directory and fill it with the variables.
	- Name of the subnet
	- Resource group name
	- Virtual network name
	- Subnet Address Spaces
	- Resource group location
	- NSG rule priorities and ports
1. Create `outputs.tf` file in the module directory and output
	- Subnet name
	- Subnet ID

## 06-04: Subnets and NSGs
Create `subnets-nsgs.tf` file and create modules for
- Web subnet
- App subnet
- DB subnet
- Bastion subnet


## 06-05: Terraform Output Values for Azure Virtual Network
Create `outputs.tf` file and output the names and IDs of VNet and subnets.

## Step-08: Execute Terraform Commands
```t
# Terraform Initialize
terraform init

# Terraform Validate
terraform validate

# Terraform Plan
terraform plan

# Terraform Apply
terraform apply -auto-approve
```

## Step-09: Verify Resources
1. Azure Resource Group
2. Azure Virtual Network
3. Azure Subnets (Web, App, DB, Bastion)
4. Azure Network Security Groups (Web, App, DB, Bastion)
5. View the topology
6. Verify Terraform Outputs in Terraform CLI

## Step-10: Delete Resources
```t
# Delete Resources
terraform destroy
terraform apply -destroy

# Clean-Up Files
rm -rf .terraform*
rm -rf terraform.tfstate*
```
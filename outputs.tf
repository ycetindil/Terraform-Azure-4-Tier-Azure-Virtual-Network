# Virtual Network Outputs
## Virtual Network Name
output "virtual_network_name" {
  description = "Virtual Network Name"
  value = azurerm_virtual_network.vnet.name
}
## Virtual Network ID
output "virtual_network_id" {
  description = "Virtual Network ID"
  value = azurerm_virtual_network.vnet.id
}

# Subnet Outputs (We will write for one web subnet and rest all we will ignore for now)
## Subnet Name
output "web_subnet_name" {
  description = "WebTier Subnet Name"
  value = module.websubnet.subnet_name
}

## Subnet ID
output "web_subnet_id" {
  description = "WebTier Subnet ID"
  value = module.websubnet.subnet_id
}

# Network Security Outputs
## Web Subnet NSG Name
output "web_subnet_nsg_name" {
  description = "WebTier Subnet NSG Name"
  value = module.websubnet.subnet_nsg_name
}

## Web Subnet NSG ID
output "web_subnet_nsg_id" {
  description = "WebTier Subnet NSG ID"
  value = module.websubnet.subnet_nsg_id
}
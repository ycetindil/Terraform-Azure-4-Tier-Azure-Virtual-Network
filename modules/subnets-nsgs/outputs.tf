output "subnet_name" {
  value = azurerm_subnet.subnet.name
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "subnet_nsg_name" {
  value = azurerm_network_security_group.subnet_nsg.name
}

output "subnet_nsg_id" {
  value = azurerm_network_security_group.subnet_nsg.id
}
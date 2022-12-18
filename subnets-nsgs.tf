module "websubnet" {
  source = "./modules/subnets-nsgs"
  subnet_name = var.web_subnet_name
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  subnet_address = var.web_subnet_address
  location = azurerm_resource_group.rg.location
  inbound_ports_map = var.web_inbound_ports_map
  depends_on = [
	azurerm_virtual_network.vnet
  ]
}

module "appsubnet" {
  source = "./modules/subnets-nsgs"
  subnet_name = var.app_subnet_name
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  subnet_address = var.app_subnet_address
  location = azurerm_resource_group.rg.location
  inbound_ports_map = var.app_inbound_ports_map
  depends_on = [
	azurerm_virtual_network.vnet
  ]
}

module "dbsubnet" {
  source = "./modules/subnets-nsgs"
  subnet_name = var.db_subnet_name
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  subnet_address = var.db_subnet_address
  location = azurerm_resource_group.rg.location
  inbound_ports_map = var.db_inbound_ports_map
  depends_on = [
	azurerm_virtual_network.vnet
  ]
}

module "bastionsubnet" {
  source = "./modules/subnets-nsgs"
  subnet_name = var.bastion_subnet_name
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  subnet_address = var.bastion_subnet_address
  location = azurerm_resource_group.rg.location
  inbound_ports_map = var.bastion_inbound_ports_map
  depends_on = [
	azurerm_virtual_network.vnet
  ]
}
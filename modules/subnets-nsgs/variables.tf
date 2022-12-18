variable "subnet_name" {
  description = "Name of the subnet"
  type = string
}

variable "resource_group_name" {
	description = "Resource group name"
	type = string
}

variable "virtual_network_name" {
  description = "Virtual network name"
  type = string
}

variable "subnet_address" {
  description = "Subnet Address Spaces"
  type = list(string)
}

variable "location" {
  description = "Resource group location"
  type = string
}

variable "inbound_ports_map" {
	description = "NSG rule priorities and ports"
  type = map(string)
}
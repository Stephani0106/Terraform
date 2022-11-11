output "vnet_id" {
  value = azurerm_virtual_network.udemy_section_05_vnet.id
}

output "subnet_id" {
  value = azurerm_subnet.udemy_section_05_subnet.id
}

output "security_group_id" {
  value = azurerm_network_security_group.udemy_section_05_nsg.id
}
resource "azurerm_resource_group" "udemy_section_05_vnet_rg" {
  name     = "lab-udemy-05-vnet-rg-01"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_virtual_network" "udemy_section_05_vnet" {
  name                = "lab-udemy-05-vnet-01"
  location            = var.location
  resource_group_name = azurerm_resource_group.udemy_section_05_vnet_rg.name
  address_space       = ["10.0.0.0/16"]

  tags = local.common_tags
}

resource "azurerm_subnet" "udemy_section_05_subnet" {
  name                 = "lab-udemy-05-subnet-01"
  resource_group_name  = azurerm_resource_group.udemy_section_05_vnet_rg.name
  virtual_network_name = azurerm_virtual_network.udemy_section_05_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "udemy_section_05_nsg" {
  name                = "lab-udemy-05-nsg-01"
  location            = var.location
  resource_group_name = azurerm_resource_group.udemy_section_05_vnet_rg.name

  security_rule {
    name                       = "SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = local.common_tags
}

resource "azurerm_subnet_network_security_group_association" "udemy_section_05_subnet_nsga" {
  subnet_id                 = azurerm_subnet.udemy_section_05_subnet.id
  network_security_group_id = azurerm_network_security_group.udemy_section_05_nsg.id
}
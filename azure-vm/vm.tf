resource "azurerm_resource_group" "udemy_section_05_vm_rg" {
  name     = "lab-udemy-05-vm-rg-01"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_public_ip" "udemy_section_05_pip" {
  name                = "lab-udemy-05-pip-01"
  resource_group_name = azurerm_resource_group.udemy_section_05_vm_rg.name
  location            = var.location
  allocation_method   = var.pip_allocation_method

  tags = local.common_tags
}

resource "azurerm_network_interface" "udemy_section_05_nic" {
  name                = "lab-udemy-05-nic-01"
  location            = var.location
  resource_group_name = azurerm_resource_group.udemy_section_05_vm_rg.name

  ip_configuration {
    name                          = "pip-tf-01"
    subnet_id                     = data.terraform_remote_state.vnet.outputs.subnet_id
    private_ip_address_allocation = var.pip_allocation_method
    public_ip_address_id          = azurerm_public_ip.udemy_section_05_pip.id
  }

  tags = local.common_tags
}

resource "azurerm_network_interface_security_group_association" "udemy_section_05_nic_nsg" {
  network_interface_id      = azurerm_network_interface.udemy_section_05_nic.id
  network_security_group_id = data.terraform_remote_state.vnet.outputs.security_group_id
}

resource "azurerm_linux_virtual_machine" "udemy_section_05_vm" {
  name                = "lab-udemy-05-vm-01"
  resource_group_name = azurerm_resource_group.udemy_section_05_vm_rg.name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.vm_adm_username
  network_interface_ids = [
    azurerm_network_interface.udemy_section_05_nic.id
  ]

  admin_ssh_key {
    username   = var.vm_adm_username
    # Run `ssh-keygen -f azure_key` to generate the ssh keys
    public_key = file("./azure_key.pub")
  }

  os_disk {
    caching              = var.vm_os_disk_caching
    storage_account_type = var.vm_os_disk_storage
  }

  source_image_reference {
    publisher = var.vm_src_img_publisher
    offer     = var.vm_src_img_offer
    sku       = var.vm_src_img_sku
    version   = var.vm_src_img_version
  }

  tags = local.common_tags
}
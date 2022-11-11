resource "azurerm_resource_group" "udemy_section_04_rg" {
  name     = "lab-udemy-04-rg-01"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "udemy_section_04_st" {
  name                     = "labudemy04st"
  resource_group_name      = azurerm_resource_group.udemy_section_04_rg.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurerm_storage_container" "udemy_section_04_st_container" {
  name                 = "lab-udemy-04-st-container-01"
  storage_account_name = azurerm_storage_account.udemy_section_04_st.name
}

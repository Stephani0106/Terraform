resource "azurerm_resource_group" "udemy_section_05_rg" {
  name     = "lab-udemy-05-rg-01"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "udemy_section_05_st" {
  name                     = "labudemy05st"
  resource_group_name      = azurerm_resource_group.udemy_section_05_rg.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }

  tags = local.common_tags
}

resource "azurerm_storage_container" "udemy_section_05_st_container" {
  name                 = "lab-udemy-05-st-container-01"
  storage_account_name = azurerm_storage_account.udemy_section_05_st.name
}

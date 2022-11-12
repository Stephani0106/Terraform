resource "azurerm_resource_group" "study_section_01_kv_rg" {
  name     = "lab-study-01-kv-rg-01"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_key_vault" "study_section_01_kv" {
  name                        = "lab-study-01-kv-01"
  resource_group_name         = azurerm_resource_group.study_section_01_kv_rg.name
  location                    = var.location
  enabled_for_disk_encryption = var.kv_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.kv_soft_delete_days
  purge_protection_enabled    = var.kv_purge_protection

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions     = var.kv_policies_key
    secret_permissions  = var.kv_policies_secret
    storage_permissions = var.kv_policies_storage
  }

  tags = local.common_tags
}
data "azurerm_resource_group" "existing_rg" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "stg" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.existing_rg.name
  location                 = data.azurerm_resource_group.existing_rg.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type
  tags                     = var.tags
}

resource "azurerm_storage_container" "cnt" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.stg.id
  container_access_type = "private"
}
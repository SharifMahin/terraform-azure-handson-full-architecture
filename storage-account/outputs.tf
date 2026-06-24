output "storage_account_name" {
  value = azurerm_storage_account.stg.name
}

output "storage_account_id" {
  value = azurerm_storage_account.stg.id
}

output "storage_account_account_kind" {
  value = azurerm_storage_account.stg.account_kind
}

output "storage_account_access_tier" {
  value = azurerm_storage_account.stg.account_tier
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.stg.primary_blob_endpoint
}

output "container_name" {
  value = azurerm_storage_container.cnt.name
}
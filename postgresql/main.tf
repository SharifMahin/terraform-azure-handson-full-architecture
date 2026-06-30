data "azurerm_resource_group" "existing_rg" {
  name = var.resource_group_name
}

resource "azurerm_postgresql_flexible_server" "psql" {
  name                   = var.postgresql_server_name
  resource_group_name    = data.azurerm_resource_group.existing_rg.name
  location               = data.azurerm_resource_group.existing_rg.location
  version                = var.postgresql_version
  administrator_login    = var.admin_username
  administrator_password = var.admin_password

  storage_mb = var.storage_mb
  sku_name   = var.sku_name

  backup_retention_days = 7
  zone                  = "1"

  tags = var.tags
}

resource "azurerm_postgresql_flexible_server_database" "db" {
  name      = var.database_name
  server_id = azurerm_postgresql_flexible_server.psql.id
  collation = "en_US.utf8"
  charset   = "utf8"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_azure" {
  name             = "AllowAzureServices"
  server_id        = azurerm_postgresql_flexible_server.psql.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}

#access rule from your pc(curl ifconfig.me).
# resource "azurerm_postgresql_flexible_server_firewall_rule" "my_pc" {
#   name             = "AllowMyPC"
#   server_id        = azurerm_postgresql_flexible_server.psql.id
#   start_ip_address = "your-actual-ip"
#   end_ip_address   = "your-actual-ip"
# }
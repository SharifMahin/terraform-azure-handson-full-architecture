output "server_name" {
  value = azurerm_postgresql_flexible_server.psql.name
}

output "server_fqdn" {
  value = azurerm_postgresql_flexible_server.psql.fqdn
}

output "database_name" {
  value = azurerm_postgresql_flexible_server_database.db.name
}
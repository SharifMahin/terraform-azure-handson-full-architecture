output "app_service_plan_id" {
  value = azurerm_service_plan.asp.id
}

output "app_service_name" {
  value = azurerm_linux_web_app.app.name
}

output "app_service_id" {
  value = azurerm_linux_web_app.app.id
}

output "default_hostname" {
  value = azurerm_linux_web_app.app.default_hostname
}
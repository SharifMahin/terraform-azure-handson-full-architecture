output "role_assignment_id" {
  value = azurerm_role_assignment.rbac.id
}

output "principal_id" {
  value = azurerm_role_assignment.rbac.principal_id
}

output "scope" {
  value = azurerm_role_assignment.rbac.scope
}

output "role" {
  value = azurerm_role_assignment.rbac.role_definition_name
}
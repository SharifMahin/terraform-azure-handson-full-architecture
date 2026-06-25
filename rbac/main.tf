data "azurerm_resource_group" "existing_rg" {
  name = var.resource_group_name
}

data "azurerm_user_assigned_identity" "existing_identity" {
  name                = var.identity_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_role_assignment" "rbac" {
  scope                = data.azurerm_resource_group.existing_rg.id
  role_definition_name = var.role_definition_name
  principal_id         = data.azurerm_user_assigned_identity.existing_identity.principal_id
}
data "azurerm_resource_group" "existing_rg" {
  name = var.resource_group_name
}

resource "azurerm_user_assigned_identity" "identity" {
  name                = var.identity_name
  location            = data.azurerm_resource_group.existing_rg.location
  resource_group_name = data.azurerm_resource_group.existing_rg.name
  tags                = var.tags
}
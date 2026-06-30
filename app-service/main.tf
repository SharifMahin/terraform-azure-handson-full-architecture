data "azurerm_resource_group" "existing_rg" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "asp" {
  name                = var.app_service_plan_name
  location            = data.azurerm_resource_group.existing_rg.location
  resource_group_name = data.azurerm_resource_group.existing_rg.name
  os_type             = var.os_type
  sku_name            = var.sku_name
  tags                = var.tags
}

resource "azurerm_linux_web_app" "app" {
  name                = var.app_service_name
  location            = data.azurerm_resource_group.existing_rg.location
  resource_group_name = data.azurerm_resource_group.existing_rg.name
  service_plan_id     = azurerm_service_plan.asp.id
  https_only          = true
  tags                = var.tags

  site_config {
    always_on = false

    application_stack {
      node_version = "22-lts"
    }
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
    "ENVIRONMENT"              = var.environment
  }
}
variable "resource_group_name" {
  type        = string
  description = "Existing resource group name"
}

variable "app_service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"
}

variable "os_type" {
  type        = string
  description = "Linux or Windows"
  default     = "Linux"
}

variable "sku_name" {
  type        = string
  description = "SKU of the App Service Plan"
  default     = "F1"
}

variable "app_service_name" {
  type        = string
  description = "Name of the App Service — globally unique"
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "dev"
}

variable "tags" {
  type    = map(string)
  default = {}
}
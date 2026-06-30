variable "resource_group_name" {
  type        = string
  description = "Existing resource group name"
}

variable "postgresql_server_name" {
  type        = string
  description = "PostgreSQL server name — globally unique"
}

variable "postgresql_version" {
  type        = string
  description = "PostgreSQL version"
  default     = "16"
}

variable "admin_username" {
  type        = string
  description = "Admin username for PostgreSQL"
}

variable "admin_password" {
  type        = string
  description = "Admin password"
  sensitive   = true
}

variable "storage_mb" {
  type        = number
  description = "Storage in MB"
  default     = 32768
}

variable "sku_name" {
  type        = string
  description = "SKU — e.g. B_Standard_B1ms (Burstable, cheapest)"
  default     = "B_Standard_B1ms"
}

variable "database_name" {
  type        = string
  description = "Database name"
}

variable "tags" {
  type    = map(string)
  default = {}
}
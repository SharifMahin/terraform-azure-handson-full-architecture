variable "resource_group_name" {
  type        = string
  description = "Existing resource group name"
}

variable "identity_name" {
  type        = string
  description = "Existing managed identity name"
}

variable "role_definition_name" {
  type        = string
  description = "Azure built-in role name"
  default     = "Contributor"
}
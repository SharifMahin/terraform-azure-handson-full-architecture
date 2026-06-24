variable "resource_group_name" {
  type        = string
  description = "Existing resource group name"
}

variable "identity_name" {
  type        = string
  description = "Name of the managed identity"
}

variable "tags" {
  type    = map(string)
  default = {}
}
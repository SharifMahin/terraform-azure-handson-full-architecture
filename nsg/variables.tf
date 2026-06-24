variable "resource_group_name" {
  type        = string
  description = "Existing resource group name"
}

variable "location" {
  type    = string
  default = "japaneast"
}

variable "nsg_name" {
  type        = string
  description = "Name of the NSG"
}

variable "vnet_name" {
  type        = string
  description = "Existing VNet name"
}

variable "subnet_name" {
  type        = string
  description = "Existing subnet name"
}

variable "tags" {
  type    = map(string)
  default = {}
}
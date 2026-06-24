variable "resource_group_name" {
  type        = string
  description = "Existing resource group name"
}

variable "location" {
  type    = string
  default = "japaneast"
}

variable "vnet_name" {
  type        = string
  description = "Name of the VNet"
}

variable "address_space" {
  type        = list(string)
  description = "VNet address space"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_prefixes" {
  type        = list(string)
  description = "Subnet address prefixes"
}

variable "tags" {
  type    = map(string)
  default = {}
}
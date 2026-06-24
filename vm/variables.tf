# variable "postfix" {
#   type = string
#   description = "Postfix for all resource names"
# }

variable "resource_group_name" {
  type        = string
  description = "Existing resource group name"
}

variable "vnet_name" {
  type        = string
  description = "Existing VNet name"
}

variable "subnet_name" {
  type        = string
  description = "Existing subnet name"
}

variable "public_ip_name" {
  type        = string
  description = "Name of the Public Value"
}

variable "nic_name" {
  type        = string
  description = "Name of the network interface"
}

variable "vm_name" {
  type        = string
  description = "Name of the VM"
}

variable "vm_size" {
  type        = string
  description = "VM size/SKU"
  default     = "Standard_B1s"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the VM"
  sensitive   = true
}

variable "tags" {
  type    = map(string)
  default = {}
}
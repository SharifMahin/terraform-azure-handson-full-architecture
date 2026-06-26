variable "resource_group_name" {
  type        = string
  description = "Existing resource group name"
}

variable "key_vault_name" {
  type        = string
  description = "Key Vault name — globally unique, 3-24 chars"
}

variable "identity_name" {
  type        = string
  description = "Existing managed identity name"
}

variable "vm_username_secret_name" {
  type        = string
  description = "Secret name for VM username"
}

variable "vm_username" {
  type        = string
  description = "VM admin username"
  sensitive   = true
}

variable "vm_password_secret_name" {
  type        = string
  description = "Secret name for VM password"
}

variable "vm_password" {
  type        = string
  description = "VM admin password"
  sensitive   = true
}


variable "tags" {
  type    = map(string)
  default = {}
}
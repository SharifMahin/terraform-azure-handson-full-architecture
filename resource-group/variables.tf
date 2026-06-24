variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Location"
  type        = string
  default     = "japaneast"
}

variable "tags" {
  description = "apply tag"
  type        = map(string)
  default = {
    environment = "dev"
    project     = "terraform-learn"
    owner       = "mahin"
  }
}
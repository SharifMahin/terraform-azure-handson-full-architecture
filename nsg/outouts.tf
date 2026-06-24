output "nsg_name" {
  value = azurerm_network_security_group.nsg.name
}

output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
}

output "subnet_nsg_association_id" {
  value = azurerm_subnet_network_security_group_association.nsg_assoc.id
}
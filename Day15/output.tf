output "rg-name" {
  value       = azurerm_resource_group.resurce_group[*].name
  description = "Name of the Resource Group"
}


output "vnet-name" {
  value       = azurerm_virtual_network.vnet[*].name
  description = "Name of the Virtual Network"
}

output "vnet-id" {
  value       = azurerm_virtual_network.vnet[*].id
  description = "ID of the Virtual Network"
  }
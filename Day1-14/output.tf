output "rg-name" {
  value       = azurerm_resource_group.resurce_group[*].name
  description = "Name of the Resource Group"
}

output "vnet-name" {
  value       = azurerm_virtual_network.virtual_network.name
  description = "Name of the Virtual Network"
}


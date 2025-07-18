resource "azurerm_storage_account" "storage_account" {
  #count                    = length(var.storage_account_name)
  # name                     = var.storage_account_name[count.index]
  for_each                 = toset(var.storage_account_name)
  name                     = each.value
  resource_group_name      = azurerm_resource_group.resurce_group.name
  location                 = azurerm_resource_group.resurce_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
}


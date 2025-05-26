resource "azurerm_storage_account" "tf_storage_account" {
  # The name must be globally unique
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.tf_resources.name
  location                 = azurerm_resource_group.tf_resources.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags = {
    environment = var.environment
    project     = var.project
    owner       = var.owner
    cost_center = var.cost_center
    created_by  = var.created_by
  }
}
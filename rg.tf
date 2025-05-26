resource "azurerm_resource_group" "tf_resources" {
  name     = var.resource_group_name
  location = var.location

}
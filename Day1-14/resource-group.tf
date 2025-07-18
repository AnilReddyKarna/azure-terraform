resource "azurerm_resource_group" "resurce_group" {
  name     = "${var.environment}-resources-group"
  location = var.location[1]
}

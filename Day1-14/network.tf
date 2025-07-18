resource "azurerm_virtual_network" "virtual_network" {
  name                = "${var.environment}-network"
  address_space       = [element(var.network_configuration, 0)]
  location            = azurerm_resource_group.resurce_group.location
  resource_group_name = azurerm_resource_group.resurce_group.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.environment}-subnet"
  resource_group_name  = azurerm_resource_group.resurce_group.name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = ["${element(var.network_configuration, 1)}/${element(var.network_configuration, 2)}"]
}

resource "azurerm_network_interface" "network_interface" {
  name                = "${var.environment}-nic"
  location            = azurerm_resource_group.resurce_group.location
  resource_group_name = azurerm_resource_group.resurce_group.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}


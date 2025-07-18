resource "azurerm_virtual_network" "vnet" {
  count               = var.count_value
  name                = "vnet${count.index + 1}"
  address_space       = ["10.${count.index + 1}.0.0/16"]
  location            = azurerm_resource_group.resurce_group.location
  resource_group_name = azurerm_resource_group.resurce_group.name
}

resource "azurerm_subnet" "subnet" {
  count                = var.count_value
  name                 = "vnet${count.index + 1}-subnet${count.index + 1}"
  resource_group_name  = azurerm_resource_group.resurce_group.name
  virtual_network_name = azurerm_virtual_network.vnet[count.index].name
  address_prefixes     = ["10.${count.index + 1}.1.0/24"]
}

resource "azurerm_public_ip" "public_ip" {
  count               = var.count_value
  name                = "publicIp${count.index + 1}"
  resource_group_name = azurerm_resource_group.resurce_group.name
  location            = azurerm_resource_group.resurce_group.location
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "nic" {
  count               = var.count_value
  name                = "nic-${count.index + 1}"
  location            = azurerm_resource_group.resurce_group.location
  resource_group_name = azurerm_resource_group.resurce_group.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnet[count.index].id
    public_ip_address_id          = azurerm_public_ip.public_ip[count.index].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface_security_group_association" "nsg_association" {
  count                 = var.count_value
  network_interface_id = azurerm_network_interface.nic[count.index].id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_virtual_network_peering" "vnet_peering" {
  count = 2
  name                      = "vnet${count.index+1}_to_vnet${count.index + 2}"
  resource_group_name       = azurerm_resource_group.resurce_group.name
  virtual_network_name      = element(azurerm_virtual_network.vnet.*.name, count.index)
  remote_virtual_network_id = element(azurerm_virtual_network.vnet.*.id, 1 - count.index)
  allow_virtual_network_access = true
}
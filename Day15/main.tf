# variable "prefix" {
#   default = "datatf"
# }


# data "azurerm_resource_group" "existing_rg" {
#   name = "rg-resource"
# }

# data "azurerm_virtual_network" "existing_vnet" {
#   name                = "vnet1"
#   resource_group_name = data.azurerm_resource_group.existing_rg.name
# }

# data "azurerm_subnet" "existing_subnet" {
#   name                 = "default"
#   resource_group_name  = data.azurerm_resource_group.existing_rg.name
#   virtual_network_name = data.azurerm_virtual_network.existing_vnet.name
# }

# resource "azurerm_resource_group" "example" {
#   name     = "${var.prefix}-rg"
#   location = data.azurerm_resource_group.existing_rg.location

# }


# resource "azurerm_network_interface" "main" {
#   name                = "${var.prefix}-nic"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "testconfiguration1"
#     subnet_id                     = data.azurerm_subnet.existing_subnet.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_virtual_machine" "main" {
#   name                  = "${var.prefix}-vm"
#   location              = azurerm_resource_group.example.location
#   resource_group_name   = azurerm_resource_group.example.name
#   network_interface_ids = [azurerm_network_interface.main.id]
#   vm_size               = "Standard_B1s"

#   # Uncomment this line to delete the OS disk automatically when deleting the VM
#   delete_os_disk_on_termination = true

#   # Uncomment this line to delete the data disks automatically when deleting the VM
#   # delete_data_disks_on_termination = true

#   storage_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
#   storage_os_disk {
#     name              = "myosdisk1"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "hostname"
#     admin_username = "testadmin"
#     admin_password = "Password1234!"
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
#   tags = {
#     environment = "staging"
#   }
# }
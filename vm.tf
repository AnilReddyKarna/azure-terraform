# resource "azurerm_virtual_machine" "virtual_machine" {
#   name                  = "${var.environment}-vm"
#   location              = azurerm_resource_group.resurce_group.location
#   resource_group_name   = azurerm_resource_group.resurce_group.name
#   network_interface_ids = [azurerm_network_interface.network_interface.id]
#   vm_size               = var.vm_size[0]
#   # Uncomment this line to delete the OS disk automatically when deleting the VM
#   delete_os_disk_on_termination = var.is_deleted

#   # Uncomment this line to delete the data disks automatically when deleting the VM
#   # delete_data_disks_on_termination = true

#   storage_image_reference {
#     publisher = var.vm_configuration.publisher
#     offer     = var.vm_configuration.offer
#     sku       = var.vm_configuration.sku
#     version   = var.vm_configuration.version

#   }
#   storage_os_disk {
#     name              = "myosdisk1"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#     disk_size_gb      = var.storage_disk_size_gb
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
#     environment = var.resource_tags["environment"]
#     project     = var.resource_tags["project"]
#     owner       = var.resource_tags["owner"]
#     cost_center = var.resource_tags["cost_center"]
#     created_by  = var.resource_tags["created_by"]
#   }
# }
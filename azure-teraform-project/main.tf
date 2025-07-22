resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source                  = "./modules/network"
  resource_group_name     = var.resource_group_name
  location                = var.location
  vnet_name               = var.vnet_name
  vnet_address_space      = var.vnet_address_space
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes

  depends_on = [
    azurerm_resource_group.resource_group
  ]
}

module "storage" {
  source                   = "./modules/storage"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = var.min_tls_version
  depends_on = [
    azurerm_resource_group.resource_group
  ]
}

module "vm" {
  source                = "./modules/vm"
  resource_group_name   = var.resource_group_name
  subnet_id             = module.network.subnet_id
  public_ip_id          = module.network.public_ip_id
  location              = var.location
  vm_name               = var.vm_name
  vm_size               = var.vm_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  image_publisher     = var.image_publisher
  image_offer         = var.image_offer
  image_sku           = var.image_sku
  image_version       = var.image_version
  storage_disk_size_gb = var.storage_disk_size_gb
  nic_name             = var.nic_name
  nsg_name             = var.nsg_name

  depends_on = [
    azurerm_resource_group.resource_group,
    module.network,
    module.storage
  ]
}
variable "subscription_id" {
  type        = string
  description = "The Azure subscription ID"
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the AKS node pool"
}
variable "location" {
  type        = string
  description = "The location of the resource group for the AKS node pool"
}
variable "environment" {
  type        = string
  description = "The environment for the AKS node pool (e.g., dev, prod)"
}
variable "vnet_name" {
  type        = string
  description = "The number of nodes in the AKS node pool"
}
variable "vnet_address_space" {
  type        = list(string)
  description = "The address space for the virtual network"
}
variable "subnet_name" {
  type        = string
  description = "The name of the subnet within the virtual network"
}
variable "subnet_address_prefixes" {
  type        = list(string)
  description = "The address prefixes for the subnet"
}
variable "account_tier" {
  type        = string
  description = "The performance tier of the storage account (e.g., Standard, Premium)"
}
variable "account_replication_type" {
  type        = string
  description = "The replication type of the storage account (e.g., LRS, GRS)"
}
variable "min_tls_version" {
  type        = string
  description = "The minimum TLS version for the storage account"
}
variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}
variable "vm_name" {
  type        = string
  description = "The name of the virtual machine"
}
variable "vm_size" {
  type        = string
  description = "The size of the virtual machine"
}
variable "admin_username" {
  type        = string
  description = "The administrator username for the virtual machine"
}
variable "admin_password" {
  type        = string
  description = "The administrator password for the virtual machine"
}
variable "nic_name" {
  type        = string
  description = "The name of the network interface"
}
variable "nsg_name" {
  type        = string
  description = "The name of the network security group"
}
variable "public_ip_name" {
  type        = string
  description = "The name of the public IP address"
}
variable "is_deleted" {
  type        = bool
  description = "Flag to indicate if the OS disk should be deleted on VM termination"
  default     = true
}
variable "image_publisher" {
  type        = string
  description = "The publisher of the VM image"
}
variable "image_offer" {
  type        = string
  description = "The offer of the VM image"
}
variable "image_sku" {
  type        = string
  description = "The SKU of the VM image"
}
variable "image_version" {
  type        = string
  description = "The version of the VM image"
}
variable "storage_disk_size_gb" {
  type        = number
  description = "The size of the OS disk in GB"
  default     = 30
}
variable "resource_tags" {
  type        = map(string)
  description = "Tags to apply to the virtual machine resources"
  default = {
    environment = "dev"
    project     = "my_project"
    owner       = "my_team"
    cost_center = "12345"
    created_by  = "terraform"
  }
}
variable "client_id" {
  type        = string
  description = "The client ID for the Azure service principal"
}
variable "client_secret" {
  type        = string
  description = "The client secret for the Azure service principal"
}
variable "tenant_id" {
  type        = string
  description = "The tenant ID for the Azure service principal"
}
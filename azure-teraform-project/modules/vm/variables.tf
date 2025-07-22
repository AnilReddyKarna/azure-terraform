variable "vm_name" {
  type        = string
  description = "The name of the virtual machine"
}
variable "location" {
  type        = string
  description = "The Azure region where the virtual machine will be deployed"
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the virtual machine"
}
variable "vm_size" {
  type        = string
  description = "The size of the virtual machine (e.g., Standard_DS1_v2)"
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
  type = map(string)
  description = "Tags to apply to the virtual machine resources"
  default = {
    environment = "dev"
    project     = "my_project"
    owner       = "my_team"
    cost_center = "12345"
    created_by  = "terraform"
  }
}
variable "admin_username" {
  type        = string
  description = "The administrator username for the virtual machine"
}
variable "admin_password" {
  type        = string
  description = "The administrator password for the virtual machine"
  sensitive   = true
}
variable "subnet_id" {
  type        = string
  description = "The ID of the subnet where the VM will be deployed"
}
variable "public_ip_id" {
  type        = string
  description = "The ID of the public IP address associated with the VM"
}
variable "nic_name" {
  type        = string
  description = "The name of the network interface"
}
variable "nsg_name" {
  type        = string
  description = "The name of the network security group"
}


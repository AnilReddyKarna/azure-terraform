variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the network resources"
}
variable "location" {
  type        = string
  description = "The location of the resource group for the network resources"
}
variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
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

variable "public_ip_name" {
  type        = string
  description = "The name of the public IP address"
  default     = "myPublicIP"
}





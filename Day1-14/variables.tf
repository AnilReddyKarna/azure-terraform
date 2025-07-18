variable "location" {
  description = "Location for the resources"
  type        = list(string)
  default     = ["East US", "West US", "Central US"]
}
variable "subscription_id" {
  description = "Subscription ID"
  type        = string

}
variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
variable "storage_disk_size_gb" {
  description = "Size of the storage disk in GB"
  type        = number
  default     = 80
}
variable "is_deleted" {
  description = "Flag to indicate if the resource is deleted"
  type        = bool
  default     = true
}
variable "resource_tags" {
  description = "Tags for the resources"
  type        = map(string)
  default = {
    "environment" = "devlopment"
    "project"     = "Terraform"
    owner         = "Anil Karna"
    cost_center   = "Azure Learning"
    created_by    = "Terraform"
  }
}
variable "network_configuration" {
  description = "Network configuration for the resources"
  type        = tuple([string, string, number])
  default     = ["10.0.0.0/16", "10.0.2.0", 24]
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = list(string)
  default     = ["Standard_B1s", "Standard_DS2_v2", "Standard_DS3_v2"]
}

variable "vm_configuration" {
  type = object({
    size      = string
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  description = "Configuration for the virtual machine"
  default = {
    size      = "Standard_B1s"
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

variable "storage_account_name" {
  description = "List of storage account names"
  type        = list(string)
  default     = ["mystorageaccount1111", "mystorageaccount2222"]
}


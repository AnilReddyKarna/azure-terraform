variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "tf-resources"
}
variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "tfstorageaccount"
}
variable "account_tier" {
  description = "Account tier for the storage account"
  type        = string
  default     = "Standard"
}
variable "account_replication_type" {
  description = "Account replication type for the storage account"
  type        = string
  default     = "LRS"
}
variable "location" {
  description = "Location for the resources"
  type        = string
  default     = "East US"
}
variable "project" {
  description = "Project name"
  type        = string
  default     = "Terraform"
}
variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "Anil Karna"
}
variable "cost_center" {
  description = "Cost center for the resources"
  type        = string
  default     = "IT"
}
variable "created_by" {
  description = "Created by"
  type        = string
  default     = "Terraform"
}
variable "subscription_id" {
  description = "Subscription ID"
  type        = string
  default     = "afecb165-21e7-4d29-9c62-d58935fa2a21"
}
variable "key" {
  description = "Key for the backend"
  type        = string
  default     = "dev.terraform.tfstate"
}
variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

#backend.tf
variable "backend_storage_account_name" {
  description = "Name of the backend storage account"
  type        = string
  default     = "tfstate10426"
}
variable "backend_container_name" {
  description = "Name of the backend container"
  type        = string
  default     = "tfstate"
}
variable "backend_resource_group_name" {
  description = "Name of the backend resource group"
  type        = string
  default     = "tfstatelearning"
}
variable "backend_key" {
  description = "Key for the backend"
  type        = string
  default     = "dev.terraform.tfstate"
}
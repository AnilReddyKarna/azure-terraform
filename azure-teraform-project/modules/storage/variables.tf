variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the storage account"
}
variable "location" {
  type        = string
  description = "The location of the resource group for the storage account"
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

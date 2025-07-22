terraform {
  backend "azurerm" {
    resource_group_name  = "tfstatelearning"
    storage_account_name = "tfstate3645"
    container_name       = "tfstate"
    key                  = "test.terraform.tfstate"
  }
}

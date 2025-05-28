resource_group_name      = "tf-resources"
location                 = ["East US", "West US", "Central US"]
environment              = "dev"

subscription_id          = "afecb165-21e7-4d29-9c62-d58935fa2a21"
storage_disk_size_gb     = 30
is_deleted               = true
resource_tags = {
  environment = "development"
  project     = "Terraform"
  owner       = "Anil Karna"
  cost_center = "Azure Learning"
  created_by  = "Terraform"
}

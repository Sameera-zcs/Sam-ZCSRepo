# Sam-ZCSRepo

# Storage Account Module

This module creates an Azure Storage Account and a Blob Storage Container.

## Usage

```hcl
module "storage_account" {
  source = "./storage-account-module"

  resource_group_name      = "example-resource-group"
  location                 = "East US"
  storage_account_name      = "examplestorageacct"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  container_name           = "example-container"
  container_access_type    = "private"
}

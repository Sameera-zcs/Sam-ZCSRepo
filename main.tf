provider "azurerm" {
  features {}
}

# Define the resource group where the storage account will be created
resource "azurerm_resource_group" "sam_RG" {
  name     = var.resource_group_name
  location = var.location
}

module "storage_account" {
  source = "./storage_account" 

  resource_group_name      = azurerm_resource_group.sam_RG.name
  location                 = azurerm_resource_group.sam_RG.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
  container_name           = var.container_name
}


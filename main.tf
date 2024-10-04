provider "azurerm" {
  features {}
  subscription_id = "e21901bf-488a-4ded-b169-b694737e4c86"
}

# Define the resource group where the storage account will be created
data "azurerm_resource_group" "existing_rg" {
  name     = "samRG" 
}

module "storage_account" {
  source = "./storage_account" 

  resource_group_name      = data.azurerm_resource_group.existing_rg.name
  location                 = data.azurerm_resource_group.existing_rg.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  container_name           = var.container_name
  container_access_type    = var.container_access_type  
  tags                     = var.tags                    
}

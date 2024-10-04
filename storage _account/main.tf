provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

lifecycle {
    ignore_changes = [name]
  }

  tags = var.tags
  }

resource "azurerm_storage_account" "storage" { 
  name                     = var.storage_account_name 
  resource_group_name       = azurerm_resource_group.rg.name 
  location                  = var.location 
  account_tier              = "Standard" 
  account_replication_type  = "LRS" 
  } 

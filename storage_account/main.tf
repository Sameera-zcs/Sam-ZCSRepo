provider "azurerm" {
  features {}
  subscription_id = "e21901bf-488a-4ded-b169-b694737e4c86"
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

# Create a Blob Container 
resource "azurerm_storage_container" "container" { 
  name                  = var.container_name 
  storage_account_name  = azurerm_storage_account.storage.name 
  container_access_type = "private" 
} 

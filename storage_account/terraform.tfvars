resource_group_name      = "samRG"
location                 = "East US"
storage_account_name     = "zcsstorageaccount"
account_tier              = "Standard"                    
account_replication_type  = "LRS"
container_name           = "zcscontainer"
container_access_type    = "private"                        

tags                      = {
  Environment = "Development"
  Project     = "Example"
}


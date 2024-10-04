resource_group_name      = "samRG"
location                 = "East US"
storage_account_name     = "zcsstorageaccount"
container_name           = "zcscontainer"
account_tier              = "Standard"                    
account_replication_type  = "LRS"                        

tags                      = {
  Environment = "Development"
  Project     = "Example"
}


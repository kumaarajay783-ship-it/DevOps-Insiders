terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.5.0"
    }
  }
  # Configuration options 
}
provider "azurerm" {
  features {}
  subscription_id = "c1acf3b7-d141-48eb-baf7-38718701d05b"
}

resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname783"
  resource_group_name      = "myfirstrg"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
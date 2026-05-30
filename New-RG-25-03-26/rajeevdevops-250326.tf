terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.65.0"
    }
  }
}

provider "azurerm" {
    features {}
  # Configuration options
}

resource "azurerm_resource_group" "rj" {
  name     = "RajeevRG"
  location = "West Europe"
}

resource "azurerm_storage_account" "storagerj" {
  name                     = "storagerj783"
  resource_group_name      = "RajeevRG"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
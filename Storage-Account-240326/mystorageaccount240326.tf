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
  # Configuration options}
}

resource "azurerm_resource_group" "rg" {
  name     = "emynewrg-240326"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage" {
  name                     = "mystorageaccount250326"
  resource_group_name      = "mynewrg-240326"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
terraform {
  required_providers {
    azurerm = { source = "hashicorp/azurerm"
    version = "4.64.0" }
  }
}
provider "azurerm" {
  features {}
  # Configuration options }
}
resource "azurerm_resource_group" "rg" {
  name     = "rkdevopsrg783"
  location = "Central India"
}

resource "azurerm_storage_account" "storage" {
  name                     = "rkdevopsstorage783"
  resource_group_name      = "rkdevopsrg783"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
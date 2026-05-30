terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.67.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "rk_strg" {
  name                     = "rkstrg123"
  resource_group_name      = "rkrg06"
  location                 = "central india"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
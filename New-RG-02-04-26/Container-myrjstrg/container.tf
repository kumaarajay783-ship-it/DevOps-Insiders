terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.66.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "mynewrjrg"
  location = "West Europe"
}

resource "azurerm_storage_account" "strg" {
  name                     = "mynewrjstrg"
  resource_group_name      = "mynewrjrg"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "myrjstrgcontainer"
  storage_account_id    = "mynewrjstrg"
  container_access_type = "private"
}
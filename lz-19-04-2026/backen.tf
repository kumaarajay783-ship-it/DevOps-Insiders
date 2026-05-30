terraform {
  backend "azurerm" {
    tenant_id            = "ea148554-5216-4c68-a096-61ffa47ece2f"
    resource_group_name  = "rg_783"
    storage_account_name = "strgtest783"
    container_name       = "cont1"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.69.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_test" {
  name     = "rg_783"
  location = "West Europe"
}

resource "azurerm_storage_account" "strg_test" {
  name                     = "strgtest783"
  resource_group_name      = azurerm_resource_group.rg_test.name
  location                 = azurerm_resource_group.rg_test.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "cont" {
  name                  = "cont1"
  storage_account_name  = "strgtest783"
  container_access_type = "private"
}
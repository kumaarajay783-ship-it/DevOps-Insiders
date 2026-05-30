terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "testrg_dev" {
  name     = var.rg
  location = var.resource_location
}

resource "azurerm_resource_group" "testrg_dev1" {
  name     = var.rg1
  location = "centralindia"
}
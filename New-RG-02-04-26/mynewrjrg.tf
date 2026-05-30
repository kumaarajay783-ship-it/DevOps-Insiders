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

resource "azurerm_resource_group" "rg2" {
  name     = "mynewrjrg2"
  location = "West Europe"
}
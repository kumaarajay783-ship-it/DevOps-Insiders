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
  name     = "mynewrg-240326"
  location = "West Europe"
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.67.0"
    }
  }
}

provider "azurerm" {
  features{}
}

resource "azurerm_resource_group" "rg_rk" {
  name     = "rkrg06"
  location = "West Europe"
}
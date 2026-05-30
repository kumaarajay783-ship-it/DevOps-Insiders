terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.69.0"
    }
  }
  backend "azurerm" {
    
    resource_group_name  = "rg_backend"
    storage_account_name = "strgbackend2104"
    container_name       = "contbackend"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
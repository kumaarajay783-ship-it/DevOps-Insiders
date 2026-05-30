terraform {
  backend "azurerm" {
    resource_group_name = "rg_783"
    storage_account_name = "strgtest783"
    container_name = "conttest"
    key = "terraform.tfstate"
  }
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
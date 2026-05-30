provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "myfirstrg"
  location = "Central India"
}
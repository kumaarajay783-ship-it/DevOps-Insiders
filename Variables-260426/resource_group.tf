resource "azurerm_resource_group" "dev-rg" {
  name     = var.x-project-rg01
  location = var.resource_location1
}

resource "azurerm_resource_group" "dev-rg1" {
  name     = var.x-project-rg02
  location = var.resource_location2
}
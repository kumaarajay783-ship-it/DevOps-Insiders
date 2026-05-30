resource "azurerm_resource_group" "devrg" {
  name = var.rgs
  location = "eastus"
}

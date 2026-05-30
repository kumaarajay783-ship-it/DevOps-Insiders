resource "azurerm_resource_group" "rg_new" {
  for_each = var.rg_new
  name     = each.value.name
  location = each.value.location
}
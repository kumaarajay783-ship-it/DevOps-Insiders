resource "azurerm_resource_group" "resource_group" {
  for_each = var.r_g
  name     = each.value.name
  location = each.value.loc
}

resource "azurerm_storage_account" "storage_account" {
  for_each                 = var.s_a
  name                     = each.value.name
  resource_group_name      = azurerm_resource_group.resource_group["rgnames"].name
  location                 = azurerm_resource_group.resource_group["rgnames"].location
  account_tier             = each.value.at
  account_replication_type = each.value.art
}
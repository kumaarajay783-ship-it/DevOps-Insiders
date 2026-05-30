# Resource Groups Creation
resource "azurerm_resource_group" "rg" {
  for_each = var.infrastructure
  name     = each.value.rg_name
  location = each.value.location
}

# Storage Accounts Creation
resource "azurerm_storage_account" "storage" {
  for_each                 = var.infrastructure
  name                     = each.value.storage_account_name
  resource_group_name      = azurerm_resource_group.rg[each.key].name
  location                 = azurerm_resource_group.rg[each.key].location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.replication_type
}
resource "azurerm_storage_account" "storage" {

  for_each = var.storage_accounts

  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location

  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  account_kind = each.value.account_kind
  access_tier  = each.value.access_tier

  https_traffic_only_enabled = each.value.https_traffic_only_enabled
  min_tls_version            = each.value.min_tls_version

  shared_access_key_enabled = each.value.shared_access_key_enabled

  tags = each.value.tags

}
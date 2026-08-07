resource "azurerm_managed_disk" "managed_disk" {

  for_each = var.managed_disks

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  storage_account_type = each.value.storage_account_type

  create_option = each.value.create_option

  disk_size_gb = each.value.disk_size_gb

  zone = each.value.zone

  os_type = each.value.os_type

  source_resource_id = each.value.source_resource_id

  hyper_v_generation = each.value.hyper_v_generation

  tags = each.value.tags

}
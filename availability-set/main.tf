resource "azurerm_availability_set" "availability_set" {

  for_each = var.availability_sets

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  managed = each.value.managed

  platform_fault_domain_count  = each.value.platform_fault_domain_count

  platform_update_domain_count = each.value.platform_update_domain_count

  proximity_placement_group_id = each.value.proximity_placement_group_id

  tags = each.value.tags

}
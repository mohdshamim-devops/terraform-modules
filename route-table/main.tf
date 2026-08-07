resource "azurerm_route_table" "table" {

  for_each = var.route_tables

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  bgp_route_propagation_enabled = !each.value.disable_bgp_route_propagation

  tags = each.value.tags

}
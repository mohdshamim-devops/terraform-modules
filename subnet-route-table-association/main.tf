resource "azurerm_subnet_route_table_association" "subnet_table" {

  for_each = var.subnet_route_table_associations

  subnet_id      = each.value.subnet_id
  route_table_id = each.value.route_table_id

}
resource "azurerm_nat_gateway_public_ip_association" "Nat_association" {

  for_each = var.nat_gateway_public_ip_associations

  nat_gateway_id       = each.value.nat_gateway_id
  public_ip_address_id = each.value.public_ip_id

}
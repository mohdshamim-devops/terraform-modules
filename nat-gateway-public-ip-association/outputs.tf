output "nat_gateway_public_ip_association_ids" {

  description = "NAT Gateway Public IP Association IDs"

  value = {

    for key, association in azurerm_nat_gateway_public_ip_association.Nat_association :

    key => association.id

  }

}
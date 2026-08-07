output "subnet_nat_gateway_association_ids" {

  description = "Subnet NAT Gateway Association IDs"

  value = {

    for key, association in azurerm_subnet_nat_gateway_association.Subnet_Nat_Association :

    key => association.id

  }

}
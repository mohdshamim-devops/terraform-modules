output "subnet_route_table_association_ids" {

  description = "Subnet Route Table Association IDs"

  value = {

    for key, association in azurerm_subnet_route_table_association.subnet_table :

    key => association.id

  }

}
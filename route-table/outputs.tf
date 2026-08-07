output "route_table_ids" {

  description = "Route Table IDs"

  value = {

    for key, rt in azurerm_route_table.table :

    key => rt.id

  }

}

output "route_table_names" {

  description = "Route Table Names"

  value = {

    for key, rt in azurerm_route_table.table :

    key => rt.name

  }

}
output "nat_gateway_ids" {

  description = "NAT Gateway IDs"

  value = {

    for key, nat in azurerm_nat_gateway.NAT :

    key => nat.id

  }

}

output "nat_gateway_names" {

  description = "NAT Gateway Names"

  value = {

    for key, nat in azurerm_nat_gateway.NAT :

    key => nat.name

  }

}
output "network_security_group_ids" {

  description = "Network Security Group IDs"

  value = {

    for key, nsg in azurerm_network_security_group.NSG :

    key => nsg.id

  }

}

output "network_security_group_names" {

  description = "Network Security Group Names"

  value = {

    for key, nsg in azurerm_network_security_group.NSG :

    key => nsg.name

  }

}
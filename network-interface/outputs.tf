output "network_interface_ids" {

  description = "Network Interface IDs"

  value = {

    for key, nic in azurerm_network_interface.network_interface :

    key => nic.id

  }

}

output "network_interface_names" {

  description = "Network Interface Names"

  value = {

    for key, nic in azurerm_network_interface.network_interface :

    key => nic.name

  }

}

output "private_ip_addresses" {

  description = "Private IP Addresses"

  value = {

    for key, nic in azurerm_network_interface.network_interface :

    key => nic.private_ip_address

  }

}
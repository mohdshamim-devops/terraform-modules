output "public_ip_ids" {

  description = "Public IP IDs"

  value = {

    for key, pip in azurerm_public_ip.this :

    key => pip.id

  }

}

output "public_ip_addresses" {

  description = "Public IP Addresses"

  value = {

    for key, pip in azurerm_public_ip.public_ip :

    key => pip.ip_address

  }

}

output "public_ip_names" {

  description = "Public IP Names"

  value = {

    for key, pip in azurerm_public_ip.public_ip :

    key => pip.name

  }

}
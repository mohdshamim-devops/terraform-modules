output "availability_set_ids" {

  description = "Availability Set IDs"

  value = {

    for key, aset in azurerm_availability_set.availability_set :

    key => aset.id

  }

}

output "availability_set_names" {

  description = "Availability Set Names"

  value = {

    for key, aset in azurerm_availability_set.availability_set :

    key => aset.name

  }

}
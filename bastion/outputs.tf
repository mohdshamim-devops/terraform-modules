output "bastion_ids" {

  description = "Azure Bastion IDs"

  value = {

    for key, bastion in azurerm_bastion_host.bastion :

    key => bastion.id

  }

}

output "bastion_names" {

  description = "Azure Bastion Names"

  value = {

    for key, bastion in azurerm_bastion_host.bastion :

    key => bastion.name

  }

}
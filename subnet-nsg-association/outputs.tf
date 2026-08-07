output "subnet_nsg_association_ids" {

  description = "Subnet NSG Association IDs"

  value = {

    for key, association in azurerm_subnet_network_security_group_association.NSG_Association :

    key => association.id

  }

}
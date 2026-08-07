output "role_assignment_ids" {

  description = "Role Assignment IDs"

  value = {

    for key, assignment in azurerm_role_assignment.role_assignment :

    key => assignment.id

  }

}
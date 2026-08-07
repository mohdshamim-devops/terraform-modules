output "vm_extension_ids" {

  description = "Virtual Machine Extension IDs"

  value = {

    for key, ext in azurerm_virtual_machine_extension.vm_extension :

    key => ext.id

  }

}
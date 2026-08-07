output "windows_vm_ids" {

  description = "Windows VM IDs"

  value = {

    for key, vm in azurerm_windows_virtual_machine.windows_vm :

    key => vm.id

  }

}

output "windows_vm_names" {

  description = "Windows VM Names"

  value = {

    for key, vm in azurerm_windows_virtual_machine.windows_vm :

    key => vm.name

  }

}
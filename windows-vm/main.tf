resource "azurerm_windows_virtual_machine" "windows_vm" {

  for_each = var.windows_virtual_machines

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

  size = each.value.size

  admin_username = each.value.admin_username
  admin_password = each.value.admin_password

  network_interface_ids = each.value.network_interface_ids

  provision_vm_agent       = each.value.provision_vm_agent
#   enable_automatic_updates = each.value.enable_automatic_updates

  computer_name = each.value.computer_name

  zone = each.value.zone

  os_disk {

    caching              = each.value.os_disk.caching
    storage_account_type = each.value.os_disk.storage_account_type
    disk_size_gb         = each.value.os_disk.disk_size_gb

  }

  source_image_reference {

    publisher = each.value.source_image_reference.publisher
    offer     = each.value.source_image_reference.offer
    sku       = each.value.source_image_reference.sku
    version   = each.value.source_image_reference.version

  }

  tags = each.value.tags

}
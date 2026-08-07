resource "azurerm_virtual_machine_extension" "vm_extension" {

  for_each = var.vm_extensions

  name = each.value.name

  virtual_machine_id = each.value.virtual_machine_id

  publisher = each.value.publisher

  type = each.value.type

  type_handler_version = each.value.type_handler_version

  auto_upgrade_minor_version = each.value.auto_upgrade_minor_version

  automatic_upgrade_enabled = each.value.automatic_upgrade_enabled

  settings = each.value.settings == null ? null : jsonencode(each.value.settings)

  protected_settings = each.value.protected_settings == null ? null : jsonencode(each.value.protected_settings)

}
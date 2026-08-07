resource "azurerm_network_interface" "network_interface" {

  for_each = var.network_interfaces

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

#   enable_ip_forwarding           = each.value.enable_ip_forwarding
#   enable_accelerated_networking  = each.value.enable_accelerated_networking

  dns_servers = each.value.dns_servers

  dynamic "ip_configuration" {

    for_each = each.value.ip_configurations

    content {

      name = ip_configuration.value.name

      subnet_id = ip_configuration.value.subnet_id

      private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation

      private_ip_address = try(ip_configuration.value.private_ip_address, null)

      public_ip_address_id = try(ip_configuration.value.public_ip_address_id, null)

      primary = try(ip_configuration.value.primary, true)

    }

  }

  tags = each.value.tags

}
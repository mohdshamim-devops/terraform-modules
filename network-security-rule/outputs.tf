output "network_security_rule_ids" {

  value = {

    for key, rule in azurerm_network_security_rule.NSR :

    key => rule.id

  }

}
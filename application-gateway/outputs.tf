output "application_gateway_ids" {

  value = {

    for key, appgw in azurerm_application_gateway.APG :

    key => appgw.id

  }

}

output "application_gateway_names" {

  value = {

    for key, appgw in azurerm_application_gateway.APG :

    key => appgw.name

  }

}
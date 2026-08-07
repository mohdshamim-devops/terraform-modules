output "load_balancer_ids" {

  description = "Load Balancer IDs"

  value = {

    for key, lb in azurerm_lb.lb :

    key => lb.id

  }

}

output "load_balancer_names" {

  description = "Load Balancer Names"

  value = {

    for key, lb in azurerm_lb.lb :

    key => lb.name

  }

}
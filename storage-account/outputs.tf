output "storage_account_ids" {

  description = "Storage Account IDs"

  value = {

    for key, sa in azurerm_storage_account.storage :

    key => sa.id

  }

}

output "storage_account_names" {

  description = "Storage Account Names"

  value = {

    for key, sa in azurerm_storage_account.storage :

    key => sa.name

  }

}

output "primary_blob_endpoints" {

  value = {

    for key, sa in azurerm_storage_account.storage :

    key => sa.primary_blob_endpoint

  }

}
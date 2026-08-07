output "key_vault_ids" {

  description = "Key Vault IDs"

  value = {

    for key, kv in azurerm_key_vault.vault :

    key => kv.id

  }

}

output "key_vault_names" {

  description = "Key Vault Names"

  value = {

    for key, kv in azurerm_key_vault.vault :

    key => kv.name

  }

}

output "vault_uri" {

  description = "Key Vault URI"

  value = {

    for key, kv in azurerm_key_vault.vault :

    key => kv.vault_uri

  }

}
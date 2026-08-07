output "managed_disk_ids" {

  description = "Managed Disk IDs"

  value = {

    for key, disk in azurerm_managed_disk.managed_disk :

    key => disk.id

  }

}

output "managed_disk_names" {

  description = "Managed Disk Names"

  value = {

    for key, disk in azurerm_managed_disk.managed_disk :

    key => disk.name

  }

}
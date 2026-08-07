output "disk_attachment_ids" {

  description = "Managed Disk Attachment IDs"

  value = {

    for key, attachment in azurerm_virtual_machine_data_disk_attachment.disk_attachment :

    key => attachment.id

  }

}
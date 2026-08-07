output "diagnostic_setting_ids" {

  description = "Diagnostic Setting IDs"

  value = {

    for key, ds in azurerm_monitor_diagnostic_setting.diagnostic_setting :

    key => ds.id

  }

}
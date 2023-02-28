resource "azurerm_network_watcher_flow_log" "this" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  network_watcher_name      = var.network_watcher_name
  network_security_group_id = var.network_security_group_id
  storage_account_id        = var.storage_account_id
  enabled                   = true
  version                   = 2
  retention_policy {
    enabled = true
    days    = 3
  }
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}  
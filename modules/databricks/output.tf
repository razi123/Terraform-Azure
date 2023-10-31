output "databricks_host" {
  value = "https://${azurerm_databricks_workspace.DB_workspace.workspace_url}/"
}
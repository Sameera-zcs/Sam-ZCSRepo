output "storage_account_id" {
  value = azurerm_storage_account.storage.id
}

output "blob_container_url" {
  value = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/"
}

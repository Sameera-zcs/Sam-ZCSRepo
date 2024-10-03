output "storage_account_id" {
  value = azurerm_storage_account.storage_account.id
}

output "blob_container_url" {
  value = azurerm_storage_container.blob_container.url
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Location for the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "account_tier" {
  description = "Storage account performance tier (Standard or Premium)"
  type        = string
}

variable "account_replication_type" {
  description = "Replication type for the storage account (LRS, GRS, RAGRS, ZRS)"
  type        = string
}

variable "container_name" {
  description = "Name of the blob container"
  type        = string
}

variable "container_access_type" {
  description = "Access level of the container (private, blob, container)"
  type        = string
}

variable "tags" {
  description = "Tags for the storage account"
  type        = map(string)
  default     = {}
}

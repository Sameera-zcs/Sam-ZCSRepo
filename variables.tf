variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
}

variable "container_name" {
  description = "The name of the blob container."
  type        = string
}

variable "container_access_type" {
  description = "The access type of the blob container."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "subscription_id" {
  description = "The subscription ID where the role will be created"
  type        = string
}
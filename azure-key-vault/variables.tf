variable "location" {
  description = "Variable to store the location of the resources"
  type        = string
  default     = "East US 2"
}

variable "kv_disk_encryption" {
  description = "Variable to store the flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys."
  type        = bool
}

variable "kv_soft_delete_days" {
  description = "Variable to store the number of days that items should be retained for once soft-deleted."
  type        = number
}

variable "kv_purge_protection" {
  description = "Variable to store if the Purge Protection is enabled for this Key Vault."
  type        = bool
}

variable "kv_policies_key" {
  description = "Variable to store list of key permissions."
  type        = list(string)
}

variable "kv_policies_secret" {
  description = "Variable to store list of secret permissions."
  type        = list(string)
}

variable "kv_policies_storage" {
  description = "Variable to store list of storage permissions."
  type        = list(string)
}

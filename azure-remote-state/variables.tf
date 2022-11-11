variable "location" {
  description = "Variable to store the location of the resources"
  type        = string
  default     = "East US 2"
}

variable "account_tier" {
  description = "Variable to store the tier type of the Storage Account"
  type        = string
}

variable "account_replication_type" {
  description = "Variable to store the replication type of the Storage Account"
  type        = string
}
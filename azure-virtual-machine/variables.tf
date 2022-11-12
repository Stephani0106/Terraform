variable "location" {
  description = "Variable to store the location of the resources"
  type        = string
  default     = "East US 2"
}

variable "pip_allocation_method" {
  description = "Variable to store the allocation method for the IP address."
  type        = string
}

variable "vm_size" {
  description = "Variable to store the SKU which should be used for this Virtual Machine."
  type        = string
}

variable "vm_adm_username" {
  description = "Variable to store the username of the local administrator used for the Virtual Machine."
  type        = string
}

variable "vm_os_disk_caching" {
  description = "Variable to store the type of Caching which should be used for the Internal OS Disk."
  type        = string
}

variable "vm_os_disk_storage" {
  description = "Variable to store the type of Storage Account which should back this the Internal OS Disk."
  type        = string
}

variable "vm_src_img_publisher" {
  description = "Variable to store the publisher of the image used to create the virtual machine."
  type        = string
}

variable "vm_src_img_offer" {
  description = "Variable to store the offer of the image used to create the virtual machine."
  type        = string
}

variable "vm_src_img_sku" {
  description = "Variable to store the SKU of the image used to create the virtual machine."
  type        = string
}

variable "vm_src_img_version" {
  description = "Variable to store the version of the image used to create the virtual machine."
  type        = string
}
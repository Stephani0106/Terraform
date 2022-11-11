# - Terraform block is used for setting the version of the terraform we want
# - It may also contain required_providers block inside which specifies the versions of 
# the providers we need as well as where Terraform should download these providers from
terraform {

}

# - Provider blocks specifies special type of module that allows Terraform to interact 
# with various cloud-hosting platforms or data centers.
# -  Versions and download locations of providers are often specified inside the terraform 
# block, but you can also specify it inside this block as well.
provider "azurerm" {

}

# - Resource blocks are used to manage resources such as compute instances, virtual networks, 
# databases, buckets, or DNS resources
resource "azurerm_resource_group" "testrg-resource" {

}

# - Data block's primary purpose is to load or query data from APIs other than Terraform's 
# - It can be used to provide flexibility to your configuration or to connect different workspaces
data "azurerm_resource_group" "testrg-data" {

}

# - Modules are containers for multiple resources that are used together
# - It is the primary way to package and reuse resources in Terraform
module "my-module" {

}

# - This block is often called an input variable block
# - Variable block provides parameters for terraform modules and allow users to customize the data 
# provided to other terraform modules without modifying the source
variable "my-variable" {

}

# - It allows Terraform to output structured data about your configuration
# - This output can be used by users to see data like IPs or resources names in one convenient place
output "testrg-resource-id" {

}

# - Often called local variables block, this block is used to keep frequently referenced values or 
# expressions to keep the code clean and tidy
locals {

}
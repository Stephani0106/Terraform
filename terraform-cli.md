<img src="./img/command-line-icon.png" width="170" height="170"/><img src="./img/Terraform_Logo_02.png" width="200" height="200"/>

# Table of Contents

- [Docs](#docs)
- [Commands](#commands)
   - [terraform init](#terraform-init)
   - [terraform validate](#terraform-validate)
   - [terraform plan](#terraform-plan)
   - [terraform apply](#terraform-apply)
   - [terraform destroy](#terraform-destroy)
   - [terraform fmt](#terraform-fmt)
   - [terraform output](#terraform-output)


# Docs

[Terraform CLI](https://developer.hashicorp.com/terraform/cli)
# Commands 

## terraform init

The `terraform init` command performs several different initialization steps in order to prepare the current working directory for use with Terraform


## terraform validate

The `terraform validate` command validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc.


## terraform plan

The `terraform plan` command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. 

The flag `-out=FILENAME` writes the generated plan to the given filename in an opaque file format that you can later pass to terraform apply to execute the planned changes, and to some other Terraform commands that can work with saved plan files.

- Generates a binary file


## terraform apply

The `terraform apply` command executes the actions proposed in a Terraform plan.

When you run terraform apply without passing a saved plan file, Terraform automatically creates a new execution plan as if you had run terraform plan, prompts you to approve that plan, and takes the indicated actions. 


## terraform destroy

The `terraform destroy` command is a convenient way to destroy all remote objects managed by a particular Terraform configuration.


## terraform fmt

The `terraform fmt` command is used to rewrite Terraform configuration files to a canonical format and style. This command applies a subset of the Terraform language style conventions, along with other minor adjustments for readability.


## terraform output

The `terraform output` command is used to extract the value of an output variable from the state file.

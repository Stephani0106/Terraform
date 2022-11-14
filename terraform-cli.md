<img src="./img/command-line-icon.png" width="170" height="170"/><img src="./img/Terraform_Logo_02.png" width="200" height="200"/>

# Table of Contents

- [Commands](#commands)
   - [terraform init](#terraform-init)
   - [terraform validate](#terraform-validate)
   - [terraform plan](#terraform-plan)
   - [terraform apply](#terraform-apply)
   - [terraform destroy](#terraform-destroy)
   - [terraform fmt](#terraform-fmt)
   - [terraform output](#terraform-output)
   - [terraform import](#terraform-import)

# Commands 

## terraform init

The `terraform init` command performs several different initialization steps in order to prepare the current working directory for use with Terraform.

### Usage

```bash
terraform init [options]
```

### Docs

- [Terraform CLI | terraform init](https://developer.hashicorp.com/terraform/cli/commands/init)


## terraform validate

The `terraform validate` command validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc.

### Usage

```bash
terraform validate [options]
```

### Docs

- [Terraform CLI | terraform validate](https://developer.hashicorp.com/terraform/cli/commands/validate)


## terraform plan

The `terraform plan` command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. 

The flag `-out=FILENAME` writes the generated plan to the given filename in an opaque file format that you can later pass to terraform apply to execute the planned changes, and to some other Terraform commands that can work with saved plan files.

### Usage

```bash
terraform plan [options]
```

### Docs

- [Terraform CLI | terraform plan](https://developer.hashicorp.com/terraform/cli/commands/plan)


## terraform apply

The `terraform apply` command executes the actions proposed in a Terraform plan.

When you run terraform apply without passing a saved plan file, Terraform automatically creates a new execution plan as if you had run terraform plan, prompts you to approve that plan, and takes the indicated actions. 

### Usage

```bash
terraform apply [options] [plan file]
```

### Docs

- [Terraform CLI | terraform apply](https://developer.hashicorp.com/terraform/cli/commands/apply)


## terraform destroy

The `terraform destroy` command is a convenient way to destroy all remote objects managed by a particular Terraform configuration.

### Usage

```bash
terraform destroy [options]
```

### Docs

- [Terraform CLI | terraform destroy](https://developer.hashicorp.com/terraform/cli/commands/destroy)


## terraform fmt

The `terraform fmt` command is used to rewrite Terraform configuration files to a canonical format and style. This command applies a subset of the Terraform language style conventions, along with other minor adjustments for readability.

### Usage

```bash
terraform fmt [options] [target...]
```

### Docs

- [Terraform CLI | terraform fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt)


## terraform output

The `terraform output` command is used to extract the value of an output variable from the state file.

### Usage

```bash
terraform output [options] [NAME]
```

### Docs

- [Terraform CLI | terraform output](https://developer.hashicorp.com/terraform/cli/commands/output)


## terraform import

The `terraform import` command imports existing resources into Terraform.

### Usage

```bash
terraform import [options] ADDRESS ID
```

### Docs

- [Terraform CLI | terraform import](https://developer.hashicorp.com/terraform/cli/commands/import)

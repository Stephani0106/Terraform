# Errors found

## Error acquiring the state lock

### How to reproduce this

* Run `terraform apply`
* Stop the apply for any reason, either by pressing CTRL+C or closing the terminal
* Run `terraform apply` again

### Error message

state blob is already locked

![](/img/2022-11-11-22-06-04.png)

### Solution

* [StackOverflow Forum](https://stackoverflow.com/questions/64690427/error-locking-state-error-acquiring-the-state-lock-state-blob-is-already-locke)


## Error creating Linux Virtual Machine 

### How to reproduce this

* Configure a VM with a invalid size for the current location, in this case I used the size `Standard_B1s` for the region `East US 2`
* Run `terraform apply`

### Error message

The requested size for resource '/subscriptions/`Subscription-ID`/resourceGroups/`Subscription-ID`/providers/Microsoft.Compute/virtualMachines/`VM-Name`' is currently not available in location 'eastus2' zones '' for subscription '`Subscription-ID`'. Please try another size or deploy to a different location or zones.

![](/img/2022-11-11-22-09-22.png)

### Solution

* [Azure | Products available by region](https://azure.microsoft.com/en-ca/explore/global-infrastructure/products-by-region/?products=virtual-machines)
* Run: `az vm list-sizes --location "eastus2"` and choose a available size
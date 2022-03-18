
```shell
$ terrafrom init
...
```

```shell
$ terraform plan -out terraform.tfplan
...
```

```shell
$ terraform apply terraform.tfplan
azurerm_storage_account.tfstate: Creating...
azurerm_storage_account.tfstate: Still creating... [10s elapsed]
azurerm_storage_account.tfstate: Still creating... [20s elapsed]
azurerm_storage_account.tfstate: Creation complete after 21s [id=/subscriptions/23c28aac-2178-4d00-880c-94bd7e8944c3/resourceGroups/rg-web/providers/Microsoft.Storage/storageAccounts/griendeh24g4vw]
azurerm_storage_container.tfstate: Creating...
azurerm_storage_container.tfstate: Creation complete after 0s [id=https://griendeh24g4vw.blob.core.windows.net/tfstate]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

storage_account_name = "griendeh24g4vw"
storage_container_name = "tfstate"
```
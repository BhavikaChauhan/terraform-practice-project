
Deploying temporary review environment using Terraform workspaces:

```
$ tfenv install
$ tfenv use
$ cd infrastructure/environments/rev
$ terraform init
$ terraform workspace new foo-bar-1
$ terraform apply
$ terraform destroy
$ terraform workspace select default
$ terraform workspace delete foo-bar-1
```
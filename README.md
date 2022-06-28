# EKS Auth ConfigMap Terraform Module

Terraform module to make EKS Auth with IAM Roles/Users easier.

[![experimental](http://badges.github.io/stability-badges/dist/experimental.svg)](http://github.com/badges/stability-badges)

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)

## Flakiness

This module may exhibit flakiness in the following ways:
- The first run may show changes, even if there aren't any as terraform functions quote the yaml.
- Subsequent runs may show changes, even if there aren't any as the module converts to a set and back.

## Usage
```terraform
module "eks_auth" {
  source = "git::git@github.com:npalladium/eks-auth-terraform.git"
  map_roles = var.map_roles
}
```

## Caveats

Please keep the following in mind:
- This module isn't marked "production-ready".
- The Kubernetes resource uses the `force` flag.
- Given the size, simplicity and stability of this module, it is probably best to just copy the copy over than add a dependency to it.

## Module Documentation
<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| kubernetes | >=2.6.0 |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| map\_roles | Roles to be added to the EKS ConfigMap | <pre>list(object({<br>    groups   = list(string)<br>    username = string<br>    rolearn  = string<br>  }))</pre> | `[]` | no |
| map\_users | Users to be added to the EKS ConfigMap | <pre>list(object({<br>    groups   = list(string)<br>    username = string<br>    userarn  = string<br>  }))</pre> | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws\_auth\_configmap\_data | aws-auth ConfigMap after editing |
<!-- END_TF_DOCS -->

## Contributing
Contributions are welcome in the form of PRs or issues.

## License

[MIT](https://choosealicense.com/licenses/mit/)
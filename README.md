# EKS Auth ConfigMap Terraform Module

Terraform module to make EKS Auth with IAM Roles/Users easier.

![stability-beta](https://img.shields.io/badge/stability-beta-33bbff.svg)

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)

## Flakiness

This module may exhibit flakiness in the following ways:
- The first run may show changes, even if there aren't any as terraform functions quote the yaml.
- Subsequent runs may show changes, even if there aren't any as the module converts to a set and back.

## Caveats

Please keep the following in mind:
- This module isn't marked "production-ready".
- The Kubernetes resource uses the `force` flag.
- Given the size, simplicity and stability of this module, it is probably best to just copy the copy over than add a dependency to it.

## Contributing
Contributions are welcome in the form of PRs or issues.

## License

[MIT](https://choosealicense.com/licenses/mit/)

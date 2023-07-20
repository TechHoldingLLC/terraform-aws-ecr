## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_lifecycle_policy.lifecycle](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecr_repository.repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_available_image_count"></a> [available\_image\_count](#input\_available\_image\_count) | Available last number of images in ecr | `number` | `10` | no |
| <a name="input_name"></a> [name](#input\_name) | ECR name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | n/a |

## License

Apache 2 Licensed. See [LICENSE](https://github.com/TechHoldingLLC/terraform-aws-ecr/blob/main/LICENSE) for full details.
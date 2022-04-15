# terraform-do-vpc
Terraform module that creates new or use existents VPC in do cloud.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.0.0 |
| digitalocean | ~> 2.4.0 |

## Providers

| Name | Version |
|------|---------|
| digitalocean | ~> 2.4.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ip\_range | The range of IP addresses for the VPC in CIDR notation | `string` | `"10.10.0.0/18"` | no |
| name | Name of the cluster. | `string` | `""` | no |
| region | The DigitalOcean region. | `string` | n/a | yes |
| vpc\_id | Use [Vpc ID], 'create' or 'default' | `string` | `"create"` | no |

## Outputs

| Name | Description |
|------|-------------|
| ip\_range | n/a |
| vpc\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_distribution_bucket"></a> [distribution\_bucket](#module\_distribution\_bucket) | flagscript/flagscript-s3-bucket/aws | 2.0.0 |
| <a name="module_distribution_bucket_policy"></a> [distribution\_bucket\_policy](#module\_distribution\_bucket\_policy) | flagscript/flagscript-s3-bucket/aws//modules/cloudfront-policy | 2.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.distribution_certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_cloudfront_distribution.cloudfront_distribution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_origin_access_control.origin_access_control](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_control) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cache_policy_id"></a> [cache\_policy\_id](#input\_cache\_policy\_id) | Id of the cache policy to use for the distributions default cache policy. | `string` | n/a | yes |
| <a name="input_default_root_object"></a> [default\_root\_object](#input\_default\_root\_object) | Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL. | `string` | `"index.html"` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | The domain of the cloudfront distribution | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_certificate_arn"></a> [acm\_certificate\_arn](#output\_acm\_certificate\_arn) | ARN of the certificate. |
| <a name="output_acm_domain_validation_options"></a> [acm\_domain\_validation\_options](#output\_acm\_domain\_validation\_options) | Set of domain validation objects which can be used to complete certificate validation. |
| <a name="output_distribution_arn"></a> [distribution\_arn](#output\_distribution\_arn) | ARN for the distribution. |
| <a name="output_distribution_bucket_arn"></a> [distribution\_bucket\_arn](#output\_distribution\_bucket\_arn) | Arn of the distribution bucket. |
| <a name="output_distribution_bucket_name"></a> [distribution\_bucket\_name](#output\_distribution\_bucket\_name) | Name of the distribution bucket. |
| <a name="output_distribution_domain_name"></a> [distribution\_domain\_name](#output\_distribution\_domain\_name) | Domain name corresponding to the distribution. |
| <a name="output_distribution_hosted_zone_id"></a> [distribution\_hosted\_zone\_id](#output\_distribution\_hosted\_zone\_id) | CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to. |
| <a name="output_distribution_id"></a> [distribution\_id](#output\_distribution\_id) | Identifier for the distribution. |
<!-- END_TF_DOCS -->
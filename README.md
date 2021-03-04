<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aliases | Extra CNAMEs (alternate domain names), if any, for this distribution. | `list(string)` | `null` | no |
| comment | Any comments you want to include about the distribution. | `string` | `null` | no |
| default\_root\_object | The object that you want CloudFront to return (for example, index.html) when an end user requests the root URL. | `string` | `null` | no |
| domain\_name | s3 domain name | `any` | n/a | yes |
| price\_class | The price class for this distribution. One of PriceClass\_All, PriceClass\_200, PriceClass\_100 | `string` | `"PriceClass_100"` | no |
| restriction\_location | The ISO 3166-1-alpha-2 codes for which you want CloudFront either to distribute your content (whitelist) or not distribute your content (blacklist). | `list(string)` | `[]` | no |
| restriction\_type | n/a | `string` | `"none"` | no |
| s3\_bucket\_name | Name of the s3 bucket | `any` | n/a | yes |
| tags | A map of tags to assign to the resource. | `map(string)` | `null` | no |
| web\_acl\_id | If you're using AWS WAF to filter CloudFront requests, the Id of the AWS WAF web ACL that is associated with the distribution. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have waf:GetWebACL permissions assigned. If using WAFv2, provide the ARN of the web ACL. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_cloudfront\_distribution\_arn | The ARN (Amazon Resource Name) for the distribution. |
| this\_cloudfront\_distribution\_domain\_name | The domain name corresponding to the distribution. |
| this\_cloudfront\_distribution\_id | The identifier for the distribution. |
| this\_cloudfront\_origin\_access\_identity\_iam\_arn | The IAM arn of the origin access identities created |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

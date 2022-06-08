# terraform-aws-config-multiregion
A wrapper module for [terraform-aws-config](https://github.com/rhythmictech/terraform-aws-config) to configure across an arbitrary set of regions.

[![tflint](https://github.com/rhythmictech/terraform-aws-config-multiregion/workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-config-multiregion/actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/rhythmictech/terraform-aws-config-multiregion/workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-config-multiregion/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![yamllint](https://github.com/rhythmictech/terraform-aws-config-multiregion/workflows/yamllint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-config-multiregion/actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amaster)
[![misspell](https://github.com/rhythmictech/terraform-aws-config-multiregion/workflows/misspell/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-config-multiregion/actions?query=workflow%3Amisspell+event%3Apush+branch%3Amaster)
[![pre-commit-check](https://github.com/rhythmictech/terraform-aws-config-multiregion/workflows/pre-commit-check/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-config-multiregion/actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amaster)
<a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>

## Example
Here's what using the module will look like
```hcl
module "example" {
  source = "rhythmictech/config/aws"
}
```

## About
There's no good way to do arbitrary multi-region things in TF, and some things need to be arbitrarily in multiple regions. For example, AWS Config should be enabled in any region you haven't administratively disabled.

This module will simply wrap the `terraform-aws-config` module for the regions you specify in `enabled_regions`.

*Note:* This module will forward all notifications via SNS->SQS to the SNS topic you specify. The SQS queue will be created in your default region, and the SNS topic must also be in that same region.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.8 |
| <a name="provider_aws.ap-northeast-1"></a> [aws.ap-northeast-1](#provider\_aws.ap-northeast-1) | >= 3.8 |
| <a name="provider_aws.ap-northeast-2"></a> [aws.ap-northeast-2](#provider\_aws.ap-northeast-2) | >= 3.8 |
| <a name="provider_aws.ap-northeast-3"></a> [aws.ap-northeast-3](#provider\_aws.ap-northeast-3) | >= 3.8 |
| <a name="provider_aws.ap-south-1"></a> [aws.ap-south-1](#provider\_aws.ap-south-1) | >= 3.8 |
| <a name="provider_aws.ap-southeast-1"></a> [aws.ap-southeast-1](#provider\_aws.ap-southeast-1) | >= 3.8 |
| <a name="provider_aws.ap-southeast-2"></a> [aws.ap-southeast-2](#provider\_aws.ap-southeast-2) | >= 3.8 |
| <a name="provider_aws.ca-central-1"></a> [aws.ca-central-1](#provider\_aws.ca-central-1) | >= 3.8 |
| <a name="provider_aws.eu-central-1"></a> [aws.eu-central-1](#provider\_aws.eu-central-1) | >= 3.8 |
| <a name="provider_aws.eu-north-1"></a> [aws.eu-north-1](#provider\_aws.eu-north-1) | >= 3.8 |
| <a name="provider_aws.eu-west-1"></a> [aws.eu-west-1](#provider\_aws.eu-west-1) | >= 3.8 |
| <a name="provider_aws.eu-west-2"></a> [aws.eu-west-2](#provider\_aws.eu-west-2) | >= 3.8 |
| <a name="provider_aws.eu-west-3"></a> [aws.eu-west-3](#provider\_aws.eu-west-3) | >= 3.8 |
| <a name="provider_aws.sa-east-1"></a> [aws.sa-east-1](#provider\_aws.sa-east-1) | >= 3.8 |
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | >= 3.8 |
| <a name="provider_aws.us-east-2"></a> [aws.us-east-2](#provider\_aws.us-east-2) | >= 3.8 |
| <a name="provider_aws.us-west-1"></a> [aws.us-west-1](#provider\_aws.us-west-1) | >= 3.8 |
| <a name="provider_aws.us-west-2"></a> [aws.us-west-2](#provider\_aws.us-west-2) | >= 3.8 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ap_northeast_1"></a> [ap\_northeast\_1](#module\_ap\_northeast\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_ap_northeast_2"></a> [ap\_northeast\_2](#module\_ap\_northeast\_2) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_ap_northeast_3"></a> [ap\_northeast\_3](#module\_ap\_northeast\_3) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_ap_south_1"></a> [ap\_south\_1](#module\_ap\_south\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_ap_southeast_1"></a> [ap\_southeast\_1](#module\_ap\_southeast\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_ap_southeast_2"></a> [ap\_southeast\_2](#module\_ap\_southeast\_2) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_ca_central_1"></a> [ca\_central\_1](#module\_ca\_central\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_eu_central_1"></a> [eu\_central\_1](#module\_eu\_central\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_eu_north_1"></a> [eu\_north\_1](#module\_eu\_north\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_eu_west_1"></a> [eu\_west\_1](#module\_eu\_west\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_eu_west_2"></a> [eu\_west\_2](#module\_eu\_west\_2) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_eu_west_3"></a> [eu\_west\_3](#module\_eu\_west\_3) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_sa_east_1"></a> [sa\_east\_1](#module\_sa\_east\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_us_east_1"></a> [us\_east\_1](#module\_us\_east\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_us_east_2"></a> [us\_east\_2](#module\_us\_east\_2) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_us_west_1"></a> [us\_west\_1](#module\_us\_west\_1) | rhythmictech/config/aws | ~> 1.2.0 |
| <a name="module_us_west_2"></a> [us\_west\_2](#module\_us\_west\_2) | rhythmictech/config/aws | ~> 1.2.0 |

## Resources

| Name | Type |
|------|------|
| [aws_sns_topic.ap_northeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.ap_northeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.ap_northeast_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.ap_south_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.ap_southeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.ap_southeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.ca_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.eu_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.eu_north_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.eu_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.eu_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.eu_west_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.sa_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.us_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.us_east_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.us_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.us_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.ap_northeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.ap_northeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.ap_northeast_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.ap_south_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.ap_southeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.ap_southeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.ca_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.eu_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.eu_north_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.eu_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.eu_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.eu_west_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.sa_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.us_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.us_east_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.us_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.us_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sqs_queue.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_suffix"></a> [bucket\_suffix](#input\_bucket\_suffix) | Suffix to append to S3 bucket name | `string` | `"awsconfig"` | no |
| <a name="input_delivery_channel_name"></a> [delivery\_channel\_name](#input\_delivery\_channel\_name) | Name of the delivery channel | `string` | `"awsconfig-s3"` | no |
| <a name="input_enabled_global_logging_regions"></a> [enabled\_global\_logging\_regions](#input\_enabled\_global\_logging\_regions) | Regions to enable global logging in | `list(string)` | <pre>[<br>  "us-east-1"<br>]</pre> | no |
| <a name="input_enabled_regions"></a> [enabled\_regions](#input\_enabled\_regions) | Regions to enable module in | `list(string)` | <pre>[<br>  "us-east-1",<br>  "us-east-2",<br>  "us-west-1",<br>  "us-west-2",<br>  "ca-central-1",<br>  "eu-central-1",<br>  "eu-west-1",<br>  "eu-west-2",<br>  "eu-west-3",<br>  "eu-north-1",<br>  "ap-northeast-1",<br>  "ap-northeast-2",<br>  "ap-northeast-3",<br>  "ap-southeast-1",<br>  "ap-southeast-2",<br>  "ap-south-1",<br>  "sa-east-1"<br>]</pre> | no |
| <a name="input_logging_bucket"></a> [logging\_bucket](#input\_logging\_bucket) | Optional target for S3 access logging | `string` | `null` | no |
| <a name="input_logging_prefix"></a> [logging\_prefix](#input\_logging\_prefix) | Optional target prefix for S3 access logging (only used if `s3_access_logging_bucket` is set) | `string` | `null` | no |
| <a name="input_recorder_name"></a> [recorder\_name](#input\_recorder\_name) | Name of the config recorder | `string` | `"awsconfig"` | no |
| <a name="input_snapshot_delivery_frequency"></a> [snapshot\_delivery\_frequency](#input\_snapshot\_delivery\_frequency) | Deliery frequency: One\_Hour, Three\_Hours, Six\_Hours, Twelve\_Hours, TwentyFour\_Hours | `string` | `"Six_Hours"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to resources that support it | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Getting Started
This workflow has a few prerequisites which are installed through the `./bin/install-x.sh` scripts and are linked below. The install script will also work on your local machine. 

- [pre-commit](https://pre-commit.com)
- [terraform](https://terraform.io)
- [tfenv](https://github.com/tfutils/tfenv)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [tfsec](https://github.com/tfsec/tfsec)
- [tflint](https://github.com/terraform-linters/tflint)

We use `tfenv` to manage `terraform` versions, so the version is defined in the `versions.tf` and `tfenv` installs the latest compliant version.
`pre-commit` is like a package manager for scripts that integrate with git hooks. We use them to run the rest of the tools before apply. 
`terraform-docs` creates the beautiful docs (above),  `tfsec` scans for security no-nos, `tflint` scans for best practices. 

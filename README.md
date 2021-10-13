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
| terraform | >= 0.13.5 |
| aws | ~> 3.8 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.8 |
| aws.ap-northeast-1 | ~> 3.8 |
| aws.ap-northeast-2 | ~> 3.8 |
| aws.ap-northeast-3 | ~> 3.8 |
| aws.ap-south-1 | ~> 3.8 |
| aws.ap-southeast-1 | ~> 3.8 |
| aws.ap-southeast-2 | ~> 3.8 |
| aws.ca-central-1 | ~> 3.8 |
| aws.eu-central-1 | ~> 3.8 |
| aws.eu-north-1 | ~> 3.8 |
| aws.eu-west-1 | ~> 3.8 |
| aws.eu-west-2 | ~> 3.8 |
| aws.eu-west-3 | ~> 3.8 |
| aws.sa-east-1 | ~> 3.8 |
| aws.us-east-1 | ~> 3.8 |
| aws.us-east-2 | ~> 3.8 |
| aws.us-west-1 | ~> 3.8 |
| aws.us-west-2 | ~> 3.8 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket\_suffix | Suffix to append to S3 bucket name | `string` | `"awsconfig"` | no |
| delivery\_channel\_name | Name of the delivery channel | `string` | `"awsconfig-s3"` | no |
| enabled\_global\_logging\_regions | Regions to enable global logging in | `list(string)` | <pre>[<br>  "us-east-1"<br>]</pre> | no |
| enabled\_regions | Regions to enable module in | `list(string)` | <pre>[<br>  "us-east-1",<br>  "us-east-2",<br>  "us-west-1",<br>  "us-west-2",<br>  "ca-central-1",<br>  "eu-central-1",<br>  "eu-west-1",<br>  "eu-west-2",<br>  "eu-west-3",<br>  "eu-north-1",<br>  "ap-northeast-1",<br>  "ap-northeast-2",<br>  "ap-northeast-3",<br>  "ap-southeast-1",<br>  "ap-southeast-2",<br>  "ap-south-1",<br>  "sa-east-1"<br>]</pre> | no |
| logging\_bucket | Optional target for S3 access logging | `string` | `null` | no |
| logging\_prefix | Optional target prefix for S3 access logging (only used if `s3_access_logging_bucket` is set) | `string` | `null` | no |
| recorder\_name | Name of the config recorder | `string` | `"awsconfig"` | no |
| snapshot\_delivery\_frequency | Deliery frequency: One\_Hour, Three\_Hours, Six\_Hours, Twelve\_Hours, TwentyFour\_Hours | `string` | `"Six_Hours"` | no |
| tags | Tags to add to resources that support it | `map(string)` | `{}` | no |

## Outputs

No output.

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

resource "aws_sns_topic" "us_east_1" {
  count = contains(var.enabled_regions, "us-east-1") ? 1 : 0

  name_prefix       = "aws-config-notify-us_east_1"
  display_name      = "AWS Config US-EAST-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.us-east-1
}

resource "aws_sns_topic_subscription" "us_east_1" {
  count = contains(var.enabled_regions, "us-east-1") ? 1 : 0

  topic_arn = aws_sns_topic.us_east_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.us-east-1
}

resource "aws_sns_topic" "us_east_2" {
  count = contains(var.enabled_regions, "us-east-2") ? 1 : 0

  name_prefix       = "aws-config-notify-us_east_2"
  display_name      = "AWS Config US-EAST-2"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.us-east-2
}

resource "aws_sns_topic_subscription" "us_east_2" {
  count = contains(var.enabled_regions, "us-east-2") ? 1 : 0

  topic_arn = aws_sns_topic.us_east_2[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.us-east-2
}

resource "aws_sns_topic" "us_west_1" {
  count = contains(var.enabled_regions, "us-west-1") ? 1 : 0

  name_prefix       = "aws-config-notify-us_west_1"
  display_name      = "AWS Config US-WEST-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.us-west-1
}

resource "aws_sns_topic_subscription" "us_west_1" {
  count = contains(var.enabled_regions, "us-west-1") ? 1 : 0

  topic_arn = aws_sns_topic.us_west_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.us-west-1
}

resource "aws_sns_topic" "us_west_2" {
  count = contains(var.enabled_regions, "us-west-2") ? 1 : 0

  name_prefix       = "aws-config-notify-us_west_2"
  display_name      = "AWS Config US-WEST-2"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.us-west-2
}

resource "aws_sns_topic_subscription" "us_west_2" {
  count = contains(var.enabled_regions, "us-west-2") ? 1 : 0

  topic_arn = aws_sns_topic.us_west_2[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.us-west-2
}

resource "aws_sns_topic" "ca_central_1" {
  count = contains(var.enabled_regions, "ca-central-1") ? 1 : 0

  name_prefix       = "aws-config-notify-ca_central_1"
  display_name      = "AWS Config CA-CENTRAL-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.ca-central-1
}

resource "aws_sns_topic_subscription" "ca_central_1" {
  count = contains(var.enabled_regions, "ca-central-1") ? 1 : 0

  topic_arn = aws_sns_topic.ca_central_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.ca-central-1
}

resource "aws_sns_topic" "eu_central_1" {
  count = contains(var.enabled_regions, "eu-central-1") ? 1 : 0

  name_prefix       = "aws-config-notify-eu_central_1"
  display_name      = "AWS Config EU-CENTRAL-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.eu-central-1
}

resource "aws_sns_topic_subscription" "eu_central_1" {
  count = contains(var.enabled_regions, "eu-central-1") ? 1 : 0

  topic_arn = aws_sns_topic.eu_central_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.eu-central-1
}

resource "aws_sns_topic" "eu_west_1" {
  count = contains(var.enabled_regions, "eu-west-1") ? 1 : 0

  name_prefix       = "aws-config-notify-eu_west_1"
  display_name      = "AWS Config EU-WEST-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.eu-west-1
}

resource "aws_sns_topic_subscription" "eu_west_1" {
  count = contains(var.enabled_regions, "eu-west-1") ? 1 : 0

  topic_arn = aws_sns_topic.eu_west_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.eu-west-1
}

resource "aws_sns_topic" "eu_west_2" {
  count = contains(var.enabled_regions, "eu-west-2") ? 1 : 0

  name_prefix       = "aws-config-notify-eu_west_2"
  display_name      = "AWS Config EU-WEST-2"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.eu-west-2
}

resource "aws_sns_topic_subscription" "eu_west_2" {
  count = contains(var.enabled_regions, "eu-west-2") ? 1 : 0

  topic_arn = aws_sns_topic.eu_west_2[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.eu-west-2
}

resource "aws_sns_topic" "eu_west_3" {
  count = contains(var.enabled_regions, "eu-west-3") ? 1 : 0

  name_prefix       = "aws-config-notify-eu_west_3"
  display_name      = "AWS Config EU-WEST-3"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.eu-west-3
}

resource "aws_sns_topic_subscription" "eu_west_3" {
  count = contains(var.enabled_regions, "eu-west-3") ? 1 : 0

  topic_arn = aws_sns_topic.eu_west_3[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.eu-west-3
}

resource "aws_sns_topic" "eu_north_1" {
  count = contains(var.enabled_regions, "eu-north-1") ? 1 : 0

  name_prefix       = "aws-config-notify-eu_north_1"
  display_name      = "AWS Config EU-NORTH-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.eu-north-1
}

resource "aws_sns_topic_subscription" "eu_north_1" {
  count = contains(var.enabled_regions, "eu-north-1") ? 1 : 0

  topic_arn = aws_sns_topic.eu_north_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.eu-north-1
}

resource "aws_sns_topic" "ap_northeast_1" {
  count = contains(var.enabled_regions, "ap-northeast-1") ? 1 : 0

  name_prefix       = "aws-config-notify-ap_northeast_1"
  display_name      = "AWS Config AP-NORTHEAST-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.ap-northeast-1
}

resource "aws_sns_topic_subscription" "ap_northeast_1" {
  count = contains(var.enabled_regions, "ap-northeast-1") ? 1 : 0

  topic_arn = aws_sns_topic.ap_northeast_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.ap-northeast-1
}

resource "aws_sns_topic" "ap_northeast_2" {
  count = contains(var.enabled_regions, "ap-northeast-2") ? 1 : 0

  name_prefix       = "aws-config-notify-ap_northeast_2"
  display_name      = "AWS Config AP-NORTHEAST-2"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.ap-northeast-2
}

resource "aws_sns_topic_subscription" "ap_northeast_2" {
  count = contains(var.enabled_regions, "ap-northeast-2") ? 1 : 0

  topic_arn = aws_sns_topic.ap_northeast_2[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.ap-northeast-2
}

resource "aws_sns_topic" "ap_southeast_1" {
  count = contains(var.enabled_regions, "ap-southeast-1") ? 1 : 0

  name_prefix       = "aws-config-notify-ap_southeast_1"
  display_name      = "AWS Config AP-SOUTHEAST-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.ap-southeast-1
}

resource "aws_sns_topic_subscription" "ap_southeast_1" {
  count = contains(var.enabled_regions, "ap-southeast-1") ? 1 : 0

  topic_arn = aws_sns_topic.ap_southeast_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.ap-southeast-1
}

resource "aws_sns_topic" "ap_southeast_2" {
  count = contains(var.enabled_regions, "ap-southeast-2") ? 1 : 0

  name_prefix       = "aws-config-notify-ap_southeast_2"
  display_name      = "AWS Config AP-SOUTHEAST-2"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.ap-southeast-2
}

resource "aws_sns_topic_subscription" "ap_southeast_2" {
  count = contains(var.enabled_regions, "ap-southeast-2") ? 1 : 0

  topic_arn = aws_sns_topic.ap_southeast_2[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.ap-southeast-2
}

resource "aws_sns_topic" "ap_south_1" {
  count = contains(var.enabled_regions, "ap-south-1") ? 1 : 0

  name_prefix       = "aws-config-notify-ap_south_1"
  display_name      = "AWS Config AP-SOUTH-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.ap-south-1
}

resource "aws_sns_topic_subscription" "ap_south_1" {
  count = contains(var.enabled_regions, "ap-south-1") ? 1 : 0

  topic_arn = aws_sns_topic.ap_south_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.ap-south-1
}

resource "aws_sns_topic" "sa_east_1" {
  count = contains(var.enabled_regions, "sa-east-1") ? 1 : 0

  name_prefix       = "aws-config-notify-sa_east_1"
  display_name      = "AWS Config SA-EAST-1"
  kms_master_key_id = "alias/aws/sns"

  provider = aws.sa-east-1
}

resource "aws_sns_topic_subscription" "sa_east_1" {
  count = contains(var.enabled_regions, "sa-east-1") ? 1 : 0

  topic_arn = aws_sns_topic.sa_east_1[0].arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this.arn

  provider = aws.sa-east-1
}

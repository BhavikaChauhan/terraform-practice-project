variable "aws_account_id" {
  type        = string
  default     = "676206927618"
  description = "The identifier of an AWS account"
}

variable "aws_default_region" {
  type        = string
  default     = "us-east-1"
  description = "Default AWS region"
}

variable "allowed_aws_account_ids" {
  type        = list(string)
  default     = ["<test_account_id>", "<production_account_id>"]
  description = "The identifiers of AWS accounts which have access to the notifier"
}

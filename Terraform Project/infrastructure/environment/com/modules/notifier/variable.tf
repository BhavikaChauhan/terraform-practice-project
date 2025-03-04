variable "allowed_aws_account_ids" {
  type        = list(string)
  description = "List of AWS Account IDs allowed to subscribe to the SNS topic"
}

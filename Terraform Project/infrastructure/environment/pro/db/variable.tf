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

variable "environment" {
  type        = string
  default     = "pro"
  description = "The name of the environment"
}

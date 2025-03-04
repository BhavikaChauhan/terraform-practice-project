terraform {
  backend "s3" {
    bucket         = "terraform-tfstate-bucket-bkt"
    key            = "infrastructure/environments/pre/ultimate-terraform-folder-structure/app.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.5.0"
    }
  }
}

provider "aws" {
  allowed_account_ids = [var.aws_account_id]
  region              = var.aws_default_region

  assume_role {
    role_arn = "arn:aws:iam::${var.aws_account_id}:role/TerraformState"
  }

  default_tags {
    tags = {
      terraform  = "true"
      repository = "ultimate-terraform-folder-structure"
    }
  }
}


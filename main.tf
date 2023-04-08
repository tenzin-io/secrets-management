terraform {
  backend "s3" {
    bucket         = "tenzin-io"
    key            = "terraform/secrets-management.state"
    dynamodb_table = "tenzin-io"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "private_key" {
  name        = "/homelab/private_key"
  description = "The private key to access my home lab machines."
  type        = "SecureString"
  value       = var.private_key
}

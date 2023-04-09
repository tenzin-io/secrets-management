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

resource "aws_ssm_parameter" "secrets" {
  for_each    = local.secrets
  type        = "SecureString"
  name        = "/homelab/${each.key}"
  description = each.value.description
  value       = each.value.content
}

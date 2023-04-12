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

resource "aws_ssm_parameter" "ssh_private_key" {
  type        = "SecureString"
  name        = "/homelab/ssh_private_key"
  value       = file("files/ssh_private_key")
  description = "My home lab SSH private key"
}

resource "aws_ssm_parameter" "github_app_private_key" {
  type        = "SecureString"
  name        = "/homelab/github_app_private_key"
  value       = file("files/github_app_private_key")
  description = "My tenzin.io GitHub app's private key"
}

resource "aws_ssm_parameter" "github_app_id" {
  type        = "SecureString"
  name        = "/homelab/github_app_id"
  value       = file("files/github_app_id")
  description = "My tenzin.io GitHub app's id"
}

resource "aws_ssm_parameter" "github_app_installation_id" {
  type        = "SecureString"
  name        = "/homelab/github_app_installation_id"
  value       = file("files/github_app_installation_id")
  description = "My tenzin.io GitHub app's installation id"
}

resource "aws_ssm_parameter" "cloudflare_api_token" {
  type        = "SecureString"
  name        = "/homelab/cloudflare_api_token"
  value       = file("files/cloudflare_api_token")
  description = "My Cloudflare API token for tenzin.io DNS"
}

resource "aws_ssm_parameter" "cloudflare_zone_id" {
  type        = "SecureString"
  name        = "/homelab/cloudflare_zone_id"
  value       = file("files/cloudflare_zone_id")
  description = "My Cloudflare zone id for tenzin.io DNS"
}

locals {
  secrets = {
    private_key = {
      description = "The private key to my home lab machines"
      content     = var.private_key
    }
    tenzin_io_github_app_key = {
      description = "The tenzin.io GitHub App private key, used by Actions Runner Controller"
      content     = var.tenzin_io_github_app_key
    }
  }
}

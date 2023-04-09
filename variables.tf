variable "private_key" {
  type        = string
  sensitive   = true
  description = "The private key to access home lab machines."
}

variable "tenzin_io_github_app_key" {
  type        = string
  sensitive   = true
  description = "The private key for tenzin.io GitHub application"
}

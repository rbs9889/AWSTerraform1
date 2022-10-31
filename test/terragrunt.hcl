terraform {
    source = "..//vault"
}


generate "provider" {
  path = "..//vault//provider.tf"
  if_exists = "skip"
  contents = <<EOF
  provider "aws" {
    profile = "default"
    access_key = "var.aws_access_key"
    secret_key = "var.aws_secret_key"
    name = "var.name"
  }
EOF
}
inputs = {
  address = local.env_vars.locals.address
  token = local.env_vars.locals.token
  tags = {
    Name = "vault"
  }
}


locals {
  env_vars = yamldecode(
  file("${"test-environment.yaml"}")
  )
}

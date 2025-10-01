provider "aws" {
  region     = var.region
  access_key = var.aws_access_key   # from secrets.tfvars
  secret_key = var.aws_secret_key   # from secrets.tfvars
}

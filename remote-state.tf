terraform {
  backend "s3" {
    bucket = "eu-west-2-terraformstate"
    key    = "${var.environment}/terraform.tfstate"
    region = "eu-west-2"
  }
}
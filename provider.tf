terraform {
  backend "s3" {
    bucket = "mybucket564"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}
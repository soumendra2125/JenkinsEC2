terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
     version = "~> 5.58.0"
    }
  }
  backend "s3" {
    bucket = "mybucket564"
    key    = "state"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "mybucket564"
    key    = "state"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}
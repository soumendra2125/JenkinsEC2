resource "aws_instance" "my_vm" {
 ami           = "ami-04a81a99f5ec58529" //Ubuntu AMI
 instance_type = "t2.micro"

 tags = {
   Name = "My_Instance"
 }
}
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
resource "aws_instance" "my_vm" {
 ami           = "ami-04a81a99f5ec58529" //Ubuntu AMI
 instance_type = "t2.micro"
 key_name      = "laptop-keys"
 associate_public_ip_address = true
 security_groups = "sg-09d76213436205016"
 subnet_id       = "subnet-04f3612e638d29de0"
 vpc_id   = "vpc-015fbb954ddefaaca"

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

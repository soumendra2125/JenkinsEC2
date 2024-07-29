resource "aws_instance" "my_vm" {
 ami           = "ami-04a81a99f5ec58529" //Ubuntu AMI
 instance_type = "t2.micro"
 tags = {
   Name = "My_InstanceJenkins"
 }
}


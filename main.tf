resource "aws_instance" "my_vm" {
 ami           = "ami-04a81a99f5ec58529" //Ubuntu AMI
 instance_type = "t2.micro"
 key_name               = "ssh-keys"
 monitoring             = true
 vpc_security_group_ids = ["sg-09d76213436205016"]
 subnet_id              = "subnet-04f3612e638d29de0"

 tags = {
   Name = "My_InstanceJenkins"
 }
}


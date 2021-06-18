provider "aws" {
  region = var.region
}

resource "aws_instance" "test-terraform" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = var.sg
    subnet_id = var.subnet
    count = var.instance_count
    user_data = file("install_apache.sh")
    tags = {
      "Name" = "QAT-StressTest-LinuxInstance"
      "Launchedvia"="Terraform"
    } 
}

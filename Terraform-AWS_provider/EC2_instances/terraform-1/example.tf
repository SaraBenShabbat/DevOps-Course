provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

resource "aws_instance" "my-example" {
  ami           = "ami-0ea3405d2d2522162"
  instance_type = var.instance_type

  tags = {
    Name = "Example ec2"
  }
}

output "instance_ip_address" {
  value       = aws_instance.my-example.*.public_ip
  description = "The public ip of the ec2 machine."
}

provider "aws" {
  profile = "default"
  region  = "${var.AWS_REGION}"
}

resource "aws_instance" "my-example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = var.instance_type

  # The VPC subnet.
  subnet_id = "${aws_subnet.main-public-1.id}"

  # The security group.
  vpc_security_group_ids = ["${aws_security_group.default-securitygroup.id}"]


  tags = {
    Name = "Example ec2"
  }
}

output "instance_ip_address" {
  value       = aws_instance.my-example.*.public_ip
  description = "The public ip of the ec2 machine."
}

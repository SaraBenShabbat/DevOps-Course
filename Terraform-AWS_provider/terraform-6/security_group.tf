resource "aws_security_group" "default-securitygroup" {
  vpc_id      = "${aws_vpc.main.id}"
  name        = "default-securitygroup"
  description = "Default security group for my ec2 instances provisioned via terraform."
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "default-securitygroup"
  }
} 

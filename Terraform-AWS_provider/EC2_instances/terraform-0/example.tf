provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

resource "aws_instance" "my-example" {
  ami           = "ami-0ea3405d2d2522162"
  instance_type = var.instance_type
}

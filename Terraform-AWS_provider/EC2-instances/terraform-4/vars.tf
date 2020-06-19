variable "AWS_REGION" {
  type    = "string"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "AMIS" {
  type    = "map"
  default = {
    "eu-west-1" = "ami-0ea3405d2d2522162"
    "eu-west-2" = "ami-032598fcc7e9d1c7a"
    "eu-west-3" = "ami-01c72e187b357583b"
  }
}

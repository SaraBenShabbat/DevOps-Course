terraform {
  backend "s3" {
    bucket = "terraform-jenkins-0"
    key    = "jenkins.terraform.tfstate"
    region = "eu-west-1"
  }
}

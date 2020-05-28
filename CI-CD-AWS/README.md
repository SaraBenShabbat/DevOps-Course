# CI CD AWS

A directory for an automatic complete CI CD process from scratch.

The directory named 'jenkins-auto-setup' is for stroing the terraform HCL files for setting up a jenkins server including VPC, Security Group etc using Packer for customming AWS AMI.

The directory named Docker for all the needed files for creating a docker image for the artifact of the application code.

The file named jenkinsfile includes the jenkins pipeline for the CI CD process. 
(- I have to finish it by adding stages of setting up EKS using Terraform and deploy the app using K8S deployment resource via the EKS.)

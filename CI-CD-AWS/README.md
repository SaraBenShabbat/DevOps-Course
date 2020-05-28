# CI CD AWS

A directory for an automation of a complete CI CD process from scratch.

Dir named jenkins-auto-setup for stroing terraform HCL files for setting up a jenkins server including VPC, Security Group etc.
Dir named Docker for all needed files for creating docker image for the artifact of the app code.
File named jenkinsfile includes the jenkins pipeline for the CI CD process. 
(- Now, I have to finish it by adding stages of setting up EKS using Terraform and deploy the app using K8S deployment resource via the EKS.

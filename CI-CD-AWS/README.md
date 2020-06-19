#- CI CD Process using AWS resources. -

A directory for an automatic CI CD process from scratch.

The directory named 'jenkins-auto-setup' stores the terraform HCL files for provisioning a jenkins server including VPC, Security Group etc. using Packer for customming AWS AMI.
In addition, the state of the infrastrucres have just been built via terraform - is stored on AWS S3 called 'terraform-jenkins-0'.

The directory named 'Docker' is for all the needed files for creating a docker image that will wrap the artifact of the application code.

The file named 'jenkinsfile' includes the jenkins pipeline for the CI CD process. 
(- I have to finish it by adding stages of setting up EKS using Terraform, deploy the app using K8S deployment resource via the EKS and notifying Slack in which status the pipline has finished.)

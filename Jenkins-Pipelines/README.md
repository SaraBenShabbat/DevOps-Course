# Jenkins pipelines

The repository contains some jenkinsfiles that I wrote.

The dirctory named 'FirstPipeline':<br>
The DSL pipeline - checking out the desired code of the app, building the the app using maven, running code analysis, checking out the appropriate Dockerfile foe the app and building it, tagiing the image, pushing the docker image into Nexus docker private registry and notifying slack about the finish status.

The directory named 'SecondPipeline':<br>
The DSL pipeline - checking out the app code, analyzing the code using sonarcloud, building the app, uploading the artifact to to Nexus maven hosted registry and deploying the artifact.

The directory named 'ThirdPipeline':<br>
The declarative pipeline - checking out the app code, anlayzing the code, building the code uisng maven and publising the artifact to Nexus maven hosted registry.

The directory named 'FourthPipeline':
The DSL pipeline running on centos agent - checkiong out the app code and the appropriate Dockerfile, building the Dockerfile, publising the docker image into DockHub and notifting Slack.



Also, In order to practice jenkins - I setup docker containers as build slaves for jenkins, using bibinwilson/jenkins-slave appropriate image for this task.

In addition, I created an aws ec2 machine and deploys there jenkins. <br>
Then, I also created a job in jenkins to build the app, and the orchestrator was the aws code pipeline.
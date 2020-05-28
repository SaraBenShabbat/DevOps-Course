FROM tomcat:8.0.20-jre8

MAINTAINER SaraBenShabbat

ARG VERSION

COPY hello-world-war-1.0.${VERSION}.war /usr/local/tomcat/webapps/java-app.war

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

EXPOSE 8080

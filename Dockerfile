FROM tomcat:latest

COPY ./var/jenkins_home/workspace/Java Project/target/addressbook-2.0.war /usr/local/tomcat/webapps/

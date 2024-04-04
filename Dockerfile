FROM tomcat:latest

COPY ./target/addressbook-2.0.war /usr/local/tomcat/webapps/

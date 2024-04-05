# Use a base image with Java pre-installed
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the .WAR artifact into the container
COPY target/addressbook-2.0.war /app/addressbook.war

# Expose the port on which your application runs
EXPOSE 8081

# Command to run your application
CMD ["java", "-jar", "addressbook.war"]

# Use an official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
COPY target/jenkins-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port on which the Spring Boot app will run
EXPOSE 8082

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

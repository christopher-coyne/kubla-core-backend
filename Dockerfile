# Start with a base image containing Java runtime (choose the tag based on your Java version)
FROM openjdk:17-jdk-slim

# The application's jar file
ARG JAR_FILE=target/*.jar

# Copy the application's jar to the container
COPY ${JAR_FILE} app.jar

# Specify the default command to run on container start
ENTRYPOINT ["java", "-jar", "/app.jar"]
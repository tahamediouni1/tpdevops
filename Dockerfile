# Use a base image with a Java Runtime Environment (JRE)
FROM openjdk

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/your-application.jar

# Expose the port your Spring Boot application is running on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "your-application.jar"]

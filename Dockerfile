# 1. Use a base image with Java (choose version as per your app, eg. openjdk:17)
FROM openjdk:17-jdk-slim

# 2. Set a working directory
WORKDIR /app

# 3. Copy the built jar file into the container
COPY target/*.jar app.jar

# 4. Expose port (default 8080 for Spring Boot)
EXPOSE 8080

# 5. Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]

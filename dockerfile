# Use Maven 3 with OpenJDK 17 base image
FROM maven:latest

# Declare /app as a volume mount point
VOLUME ["/app"]

# Set working directory
WORKDIR /app

# Build the Spring Boot application
ENTRYPOINT ["sh", "-c", "mvn clean package -DskipTests && java -jar /app/target/*.jar"]

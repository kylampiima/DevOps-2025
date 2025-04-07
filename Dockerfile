# Use Eclipse Temurin JDK 8 for compatibility with your pom.xml
FROM eclipse-temurin:8-jdk-jammy

# Set working directory
WORKDIR /app

# Copy the built JAR file
COPY target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

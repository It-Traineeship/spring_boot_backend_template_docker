# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
RUN mkdir /app
WORKDIR /app

# Copy the application source code into the container
COPY . .

# Build the application with Gradle
RUN ./gradlew build

EXPOSE 8080

CMD ["java", "-jar", "build/libs/spring_boot_template-0.0.1-SNAPSHOT.jar"]
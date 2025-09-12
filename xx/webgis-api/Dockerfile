# Use OpenJDK 17 as base image
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Create logs directory
RUN mkdir -p /app/logs

# The WAR file will be mounted via volume, so we don't copy it here
# We just need to ensure the directory exists

# Expose the port your app runs on
EXPOSE 8090

# Run the application using the volume-mounted WAR file
ENTRYPOINT ["java", "-jar", "webgis.war", "--server.port=8090", "--server.servlet.context-path=/webgis"]
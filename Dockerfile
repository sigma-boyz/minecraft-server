# Use OpenJDK 17 base image
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the Minecraft server JAR file into the container
COPY server.jar /app/

# Expose the Minecraft port
EXPOSE 25565

# Set environment variables for Minecraft server
ENV EULA=TRUE

# Run the Minecraft server
CMD ["java", "-Xmx1024M", "-Xms512M", "-jar", "server.jar", "nogui"]

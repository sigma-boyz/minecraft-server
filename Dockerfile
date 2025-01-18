```
Use an official Java runtime as a parent image
FROM openjdk:8-jdk-alpine

Set the working directory in the container
WORKDIR /app

Copy the Java JAR file into the container
COPY server.jar /app/

Expose the port that your application will listen on
EXPOSE 25565

Run the command to start your Java application when the container launches
CMD ["java", "-Xmx512M", "-Xms256M", "-jar", "server.jar", "nogui"]
```

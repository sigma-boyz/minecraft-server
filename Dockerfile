FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY server.jar /app/

EXPOSE 25565
CMD ["java", "-Xmx512M", "-Xms256M", "-jar", "server.jar", "nogui"]

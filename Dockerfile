FROM openjdk:21-jdk

WORKDIR /app

# Copy server jar and config files into the container
COPY server.jar /app/
COPY server.properties /app/
COPY eula.txt /app/

# Ensure the files are readable
RUN chmod 644 /app/server.properties /app/eula.txt

EXPOSE 25565

CMD ["java", "-Xmx512M", "-Xms256M", "-jar", "server.jar", "nogui"]

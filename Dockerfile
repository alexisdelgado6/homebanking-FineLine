FROM gradle:7.4.1-jdk11-alpine
COPY . .
RUN gradle build
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "homebanking-0.0.1-SNAPSHOT.jar" ]
FROM eclipse-temurin:19-alpine
VOLUME /tmp
EXPOSE 8080
WORKDIR /usr/app
ARG JAR_FILE=./target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} randomNr.jar
ENTRYPOINT ["java","-jar","randomNr.jar"]
FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/Sobesednik2-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} sobesednik.jar
ENTRYPOINT ["java","-jar","/sobesednik.jar"]

# syntax=docker/dockerfile:1

FROM openjdk:16-alpine3.13

ARG APP_JAR=target/*.jar

COPY ${APP_JAR} /student-portal-app.jar

ENTRYPOINT ["java", "-jar", "/student-portal-app.jar"]
FROM openjdk:11
ARG JAR_FILE=target/*.jar
ENV PORT 3000
EXPOSE 3000
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

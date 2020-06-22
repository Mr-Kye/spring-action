FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80
EXPOSE 443

#ENTRYPOINT ["java","-jar","/app.jar"]
ENTRYPOINT ["entrypoint.sh"]
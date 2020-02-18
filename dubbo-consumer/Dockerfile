FROM daocloud.io/library/java:openjdk-8-jre-alpine
MAINTAINER ThoOne 281541534@qq.com

ARG JAR_FILE
COPY target/${JAR_FILE} /app.jar

WORKDIR /

ENTRYPOINT ["java", "-jar", "app.jar"]
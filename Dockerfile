FROM openjdk:17-slim
WORKDIR /opt/app

COPY /target/demo-*.jar /opt/app/ROOT.jar

ENTRYPOINT ["java","-jar","-XX:+UseZGC","-Xmx800m","ROOT.jar"]
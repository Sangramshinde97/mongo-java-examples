# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM nimmis/alpine-java:openjdk-8-jdk

# Simply the artifact path
ARG artifact=target/mongo-java-examples-1.0-SNAPSHOT.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]

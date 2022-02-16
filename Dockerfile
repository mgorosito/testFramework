FROM maven:3.6-jdk-11

COPY ./. /

RUN mvn clean compile package -DskipTests=true

ENTRYPOINT ["/bin/sh", "-c", "mvn clean test -Dgroups=${GROUPS} -Denvironment=${ENVIRONMENT}"]
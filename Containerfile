FROM registry.access.redhat.com/ubi8/openjdk-17 AS build
WORKDIR /home/app
USER root
COPY pom.xml pom.xml
COPY src src
RUN chown -R jboss:jboss pom.xml src/
#USER jboss
RUN mvn clean package -DskipTests

FROM registry.access.redhat.com/ubi8/openjdk-17 AS run
WORKDIR /home/app
COPY --from=build /home/app/target/financas-0.0.1-SNAPSHOT.jar financas.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar financas.jar
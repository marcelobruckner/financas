FROM registry.access.redhat.com/ubi8/openjdk-17 AS build

#WORKDIR /home/jboss
#USER root
#COPY pom.xml pom.xml
#COPY src src
#RUN chown -R jboss:jboss pom.xml src/
COPY --chown=jboss . .
#USER jboss
RUN mvn clean package -DskipTests
#EXPOSE 8080
#ENTRYPOINT exec java -jar /home/jboss/target/financas-0.0.1-SNAPSHOT.jar

#FROM registry.access.redhat.com/ubi8/openjdk-17
FROM registry.access.redhat.com/ubi8/openjdk-17-runtime
#WORKDIR /home/jboss
COPY --from=build /home/jboss/target/financas-0.0.1-SNAPSHOT.jar financas.jar
EXPOSE 8080
ENTRYPOINT ["java" "-jar" "financas.jar"]

FROM openjdk:17-alpine
VOLUME /tmp
ENV SERVER_PORT=9000
COPY ../target/financas-0.0.1-SNAPSHOT.jar financas.jar
EXPOSE 9000
ENTRYPOINT exec java $JAVA_OPTS -jar financas.jar

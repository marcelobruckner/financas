# Etapa 1: Imagem de construção
FROM registry.access.redhat.com/ubi8/openjdk-17 AS build

# Definir diretório de trabalho
WORKDIR /home/jboss

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

# Copiar o código e ajustar as permissões
COPY --chown=jboss:jboss src ./src

# Executar o Maven para empacotar o projeto, ignorando os testes
RUN ./mvnw clean package -DskipTests

# Etapa 2: Imagem final para execução
FROM registry.access.redhat.com/ubi8/openjdk-17-runtime

# Definir o diretório de trabalho no contêiner
WORKDIR /home/jboss

# Copiar o artefato gerado na etapa de construção
COPY --from=build /home/jboss/target/financas-0.0.1-SNAPSHOT.jar financas.jar

# Expor a porta usada pela aplicação
EXPOSE 8080

# Usar JSON para ENTRYPOINT para correta captura de sinais e execução direta
ENTRYPOINT ["java", "-jar", "financas.jar"]
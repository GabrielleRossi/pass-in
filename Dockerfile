# Etapa de build
FROM maven:3.9.6-eclipse-temurin-17 AS builder

WORKDIR /app

ENV LANG=C.UTF-8
ENV LANGUAGE=C.UTF-8
ENV LC_ALL=C.UTF-8

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Etapa de produção
FROM eclipse-temurin:17-jre

WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]

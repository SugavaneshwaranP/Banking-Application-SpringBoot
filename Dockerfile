FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests -Dspring.profiles.active=prod

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/banking-0.0.1-SNAPSHOT.war app.war
EXPOSE 8080
CMD ["java", "-jar", "app.war", "--spring.profiles.active=prod"]
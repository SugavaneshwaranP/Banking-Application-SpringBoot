FROM maven AS build

WORKDIR /stswork/banking

COPY . .

RUN mvn clean package -DskipTests

FROM tomcat:latest

WORKDIR /usr/local/tomcat/webapps

COPY --from=build /stswork/banking/target/banking-0.0.1-SNAPSHOT.war .

EXPOSE 8080

CMD ["catalina.sh", "run"]
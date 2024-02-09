FROM maven:3.8.5-openjdk AS build
COPY . . 
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/dms-0.0.1-SNAPSHOT.jar dms.jar
EXPOSE 1006
ENTRYPOINT ["java","-jar","dms.jar"]
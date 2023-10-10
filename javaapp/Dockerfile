FROM maven:3.8.5-openjdk-17-slim AS build_step
WORKDIR /project
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre-jammy
WORKDIR /app
COPY --from=build_step /project/target/*.jar /app.jar
CMD ["java", "-jar", "/app.jar", "--spring.profiles.active=dev"]




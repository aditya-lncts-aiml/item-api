# ===============================
# Build Stage
# ===============================
FROM maven:3.9.6-eclipse-temurin-21 AS build

WORKDIR /app

# Copy pom.xml and download dependencies (cache-friendly)
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy source code
COPY src ./src

# Build Spring Boot application
RUN mvn clean package -DskipTests


# ===============================
# Runtime Stage
# ===============================
FROM eclipse-temurin:21-jre

WORKDIR /app

# Copy the generated JAR
COPY --from=build /app/target/item-api-0.0.1.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

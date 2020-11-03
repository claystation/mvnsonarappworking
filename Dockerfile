FROM maven:3.5-jdk-8-alpine

# Copy local code to the container image.
COPY pom.xml ./

RUN mvn dependency:go-offline

COPY src ./src

# Build a release artifact.
RUN mvn verify -DskipTests

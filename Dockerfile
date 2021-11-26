FROM openjdk:11-jdk
#MAINTAINER David Flemström <dflemstr@spotify.com>

ENTRYPOINT ["java", "-jar", "trade-project-0.0.1.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target/trade-project-0.0.1.jar           trade-project-0.0.1.jar
FROM openjdk:8-jre-alpine

COPY starter/            /starter
COPY target/         /usr/local/bin

ENTRYPOINT ["sh", "/starter/entrypoint.sh"]

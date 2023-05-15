ARG BASE_IMAGE=gradle:jdk11
ARG REPO_LOCATION
FROM ${REPO_LOCATION}${BASE_IMAGE}

WORKDIR /jvm-threaddump

COPY . ./

RUN /bin/bash -l -c "./gradlew assemble"

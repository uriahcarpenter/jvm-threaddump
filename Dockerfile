ARG BASE_IMAGE=public.ecr.aws/amazoncorretto/amazoncorretto:8-al2022-jdk
ARG REPO_LOCATION
FROM ${REPO_LOCATION}${BASE_IMAGE}

WORKDIR /jvm-threaddump

COPY . ./

RUN /bin/bash -l -c "./gradlew assemble"

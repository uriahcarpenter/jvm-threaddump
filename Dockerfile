ARG BASE_IMAGE=public.ecr.aws/amazoncorretto/amazoncorretto:8-al2022-jdk
ARG REPO_LOCATION
FROM public.ecr.aws/amazoncorretto/amazoncorretto:8-al2022-jdk

WORKDIR /jvm-threaddump

COPY . ./

RUN /bin/bash -l -c "./gradlew assemble"

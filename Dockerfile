FROM kitware/cmake:ci-debian10-aarch64-2021-05-11 as build

ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" > /log

COPY src src
COPY scripts scripts

RUN scripts/build.sh

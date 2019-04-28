# Beware: only meant for use with pkg2appimage-with-docker
# Beware: only use for build netease-music-appimage

FROM ubuntu:18.10

MAINTAINER "kelleg <utengfei@foxmail.com>"

ENV DEBIAN_FRONTEND=noninteractive \
    DOCKER_BUILD=1

RUN apt-get update && \
    apt-get install -y apt-transport-https libcurl3-gnutls libarchive13 wget \
    ca-cacert appstream desktop-file-utils fuse gnupg2 build-essential file \
    libglib2.0-dev libglib2.0-bin git && install -m 0777 -d /workspace

COPY docker/* /workspace/
RUN adduser --system --uid 1000 test

WORKDIR /workspace


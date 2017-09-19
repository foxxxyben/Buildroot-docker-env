# This dockerfile uses the official buildroot/base image to set up the build environment dependencies,
# then downloads the latest Buildroot sources to a local volume.

FROM  buildroot:base
LABEL maintainer="Ben Fox foxxxyben@gmail.com"

VOLUME /buildroot

# This dockerfile sets up the Buildroot build environment dependencies,
# then downloads the latest Buildroot sources to a local volume.

FROM buildroot/base

ENV BR_VERSION 2017.08
ENV SRC /src
ENV BR_WORKDIR $SRC/buildroot-$BR_VERSION

RUN mkdir -p $SRC

RUN wget -qO- http://buildroot.org/downloads/buildroot-$BR_VERSION.tar.gz \
  | tar xz && mv buildroot-$BR_VERSION $SRC

WORKDIR $BR_WORKDIR

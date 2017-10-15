# This dockerfile sets up the Buildroot build environment dependencies,
# then downloads the latest Buildroot sources to a local volume.

FROM buildroot/base

ENV BR_VERSION 2017.08
ENV SRC /src
ENV BR_WORKDIR $SRC/buildroot

RUN mkdir -p $BR_WORKDIR

RUN wget -qO- http://buildroot.org/downloads/buildroot-$BR_VERSION.tar.gz \
  | tar xz && mv buildroot-$BR_VERSION $BR_WORKDIR

WORKDIR $BR_WORKDIR

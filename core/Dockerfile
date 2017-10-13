# This dockerfile sets up the Buildroot build environment dependencies,
# then downloads the latest Buildroot sources to a local volume.

FROM buildroot/base

ENV BR_VERSION 2017.08

RUN mkdir /src/buildroot

RUN wget -qO- http://buildroot.org/downloads/buildroot-$BR_VERSION.tar.gz \
  | tar xz && mv buildroot-$BR_VERSION /src/buildroot

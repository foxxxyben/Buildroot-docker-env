# This dockerfile sets up the Buildroot build environment dependencies,
# then downloads the latest Buildroot sources to a local volume.

FROM debian:stable

ENV BR_VERSION 2017.08

description="Container with everything needed to run Buildroot"

# Setup environment
ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386
# The container has no package lists, so need to update first
RUN apt-get update -y -qq
RUN apt-get install -y -qq --no-install-recommends \
    build-essential cmake libc6:i386 gcc-multilib \
    bc ca-certificates file locales rsync \
    cvs bzr git mercurial subversion wget \
    cpio unzip \
    libncurses5-dev \
    python-nose2 python-pexpect qemu-system-arm qemu-system-x86
RUN apt-get -q -y autoremove
RUN apt-get -q -y clean

# To be able to generate a toolchain with locales, enable one UTF-8 locale
RUN sed -i 's/# \(en_US.UTF-8\)/\1/' /etc/locale.gen
RUN /usr/sbin/locale-gen

VOLUME /src/buildroot

RUN wget -qO- http://buildroot.org/downloads/buildroot-$BR_VERSION.tar.gz \
  | tar xz && mv buildroot-$BR_VERSION /src/buildroot

WORKDIR /src/buildroot

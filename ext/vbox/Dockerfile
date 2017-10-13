FROM foxxxyben/buildroot

RUN apt-get install -y -qq --no-install-recommends \
    kpartx syslinux dosfstools mtools \
    e2fsprogs util-linux coreutils mount \

ENV VBOX /src/ext/vbox

RUN mkdir -p $VBOX /
    cd $VBOX

RUN git clone https://github.com/xenogenesi/vbox-buildroot-vagrant.git

RUN cd /src/buildroot/buildroot-$BR_VERSION

RUN make BR2_EXTERNAL=$VBOX \
    BR2_DEFCONFIG=$VBOX/configs/vbox64-vagrant_defconfig

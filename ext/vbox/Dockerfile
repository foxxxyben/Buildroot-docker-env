FROM foxxxyben/buildroot

ENV VBOX $SRC/ext/vbox

# RUN apt-get install -y -qq --no-install-recommends \
#     kpartx syslinux dosfstools mtools \
#     e2fsprogs util-linux coreutils mount

RUN mkdir -p $VBOX

RUN git clone https://github.com/xenogenesi/vbox-buildroot-vagrant.git $VBOX

RUN make BR2_EXTERNAL=$VBOX \
    BR2_DEFCONFIG=$VBOX/configs/vbox64-vagrant_defconfig \
    menuconfig

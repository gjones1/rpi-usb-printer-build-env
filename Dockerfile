FROM thewtex/cross-compiler-linux-armv6
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="This image is used to build the CUPS printer drivers for the Raspberry Pi"

RUN apt-get update && apt-get install -y cups cmake doxygen subversion rsync
RUN mkdir /usr/src/able_fpu_build

WORKDIR /opt
RUN git clone https://github.com/gjones1/rpi-wheezy-build-libs.git

WORKDIR /usr/src/able_fpu_build

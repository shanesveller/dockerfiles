FROM debian:7

RUN dpkg --add-architecture i386 && \
    apt-get update -q && \
    apt-get -y install \
    bc \
    g++ \
    gcc-multilib \
    git \
    libc6:i386 \
    libncurses5-dev \
    libssl-dev \
    libstdc++6:i386 \
    m4 \
    make \
    zlib1g:i386 \
    && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*
RUN git clone https://github.com/nerves-project/nerves-sdk.git /opt/nerves
WORKDIR /opt/nerves
RUN dpkg --add-architecture i386 && \
    apt-get update -q && \
    apt-get -y install \
    wget \
    cpio \
    python \
    unzip \
    bzip2 \
    && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*
ADD config /opt/nerves/configs/my_rpi_defconfig
RUN make clean && make my_rpi_defconfig && make



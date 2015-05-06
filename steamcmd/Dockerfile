FROM debian:unstable

RUN dpkg --add-architecture i386 && \
    apt-get update -qq && \
    apt-get -y install curl lib32gcc1 lib32stdc++6 libcurl4-gnutls-dev:i386 && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

WORKDIR /opt/steamcmd

RUN curl -L http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -zxvf -

CMD ["./steamcmd.sh","+login","anonymous","+quit"]



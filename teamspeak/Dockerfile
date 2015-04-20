FROM ubuntu:14.04.2

RUN apt-get update -q && \
    apt-get -y install curl && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

WORKDIR /opt
ENV TEAMSPEAK_OS linux
ENV TEAMSPEAK_ARCH amd64
ENV TEAMSPEAK_VERSION 3.0.11.2
RUN curl -L http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_$TEAMSPEAK_OS-$TEAMSPEAK_ARCH-$TEAMSPEAK_VERSION.tar.gz | tar zxvf -

WORKDIR /opt/teamspeak3-server_linux-amd64
ENV LD_LIBRARY_PATH .
EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033
CMD ["./ts3server_linux_amd64","clear_database=1"]

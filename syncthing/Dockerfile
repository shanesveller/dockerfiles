FROM busybox
MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN mkdir -p /opt
WORKDIR /opt/
ADD https://github.com/calmh/syncthing/releases/download/v0.8.5/syncthing-linux-amd64-v0.8.5.tar.gz /opt/syncthing.tar.gz
RUN gunzip /opt/syncthing.tar.gz -c | tar xf -
RUN ln -s /opt/syncthing-linux-amd64-v0.8.5/syncthing /usr/bin/

VOLUME /data
RUN mkdir -p /data/config

EXPOSE 8080 22000
CMD syncthing -home=/data/config

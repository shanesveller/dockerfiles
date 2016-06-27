FROM java:8-jre

RUN groupadd -g 2001 minecraft && \
    useradd -d /opt/minecraft -g 2001 -m -u 2001 minecraft

RUN apt-get update -qq && \
    apt-get -y install unzip && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

WORKDIR /opt/minecraft
USER minecraft

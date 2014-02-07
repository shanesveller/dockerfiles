FROM shanesveller/base

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-get -y install default-jre-headless python-dev python-pip libssl-dev && apt-get clean

ONBUILD ADD . /opt/minecraft
ONBUILD VOLUME /opt/minecraft/world

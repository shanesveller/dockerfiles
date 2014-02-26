FROM shanesveller/java-base

RUN apt-get update -qq && apt-get install -qy python-dev python-pip libssl-dev && apt-get clean

ONBUILD ADD . /opt/minecraft
ONBUILD VOLUME /opt/minecraft/world

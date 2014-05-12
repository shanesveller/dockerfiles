FROM phusion/baseimage:0.9.10

MAINTAINER Shane Sveller <shanesveller@gmail.com>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

RUN sed -i 's/main$/main universe/' /etc/apt/sources.list

RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install -y python-software-properties && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

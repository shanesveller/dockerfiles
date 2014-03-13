FROM phusion/baseimage:0.9.8

MAINTAINER Shane Sveller <shanesveller@gmail.com>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

RUN sed -i 's/main$/main universe/' /etc/apt/sources.list

RUN apt-get update -qq && apt-get upgrade -y

RUN apt-get install -y python-software-properties supervisor

ADD nodaemon.conf /etc/supervisor/conf.d/nodaemon.conf

CMD supervisord

ONBUILD RUN apt-get update -qq

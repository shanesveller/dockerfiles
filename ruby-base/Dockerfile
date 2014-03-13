FROM shanesveller/base:latest

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-add-repository ppa:brightbox/ruby-ng

RUN echo 'gem: --no-document' > /etc/gemrc

RUN apt-get install -y build-essential git-core

ENV INSTALL_RUBY_VERSION ruby2.1
RUN apt-get update && apt-get install -y ruby-switch $INSTALL_RUBY_VERSION $INSTALL_RUBY_VERSION-dev && apt-get clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN ruby-switch --set $INSTALL_RUBY_VERSION

ENV INSTALL_GEM_VERSION 2.2.0
ENV INSTALL_BUNDLER_VERSION 1.5.2
RUN gem2.1 update --system && gem2.1 install bundler -v $INSTALL_BUNDLER_VERSION

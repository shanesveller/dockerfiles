FROM shanesveller/base:0.9.8

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-add-repository ppa:brightbox/ruby-ng

RUN echo 'gem: --no-document' > /etc/gemrc

ENV INSTALL_RUBY_VERSION ruby2.1
RUN apt-get update && apt-get install -y ruby-switch $INSTALL_RUBY_VERSION $INSTALL_RUBY_VERSION-dev && apt-get clean
RUN ruby-switch --set $INSTALL_RUBY_VERSION

ENV INSTALL_GEM_VERSION 2.2.0
ENV INSTALL_BUNDLER_VERSION 1.5.2
RUN gem2.1 update --system && gem2.1 install bundler -v $INSTALL_BUNDLER_VERSION

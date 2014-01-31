FROM phusion/baseimage

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-get update && apt-get upgrade -y && apt-get clean

# Remove authentication rights for insecure_key.
RUN rm -f /root/.ssh/authorized_keys /home/*/.ssh/authorized_keys

RUN apt-get install -y python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng

RUN echo 'gem: --no-document' > /etc/gemrc

ENV INSTALL_RUBY_VERSION ruby2.1
RUN apt-get update && apt-get install -y ruby-switch $INSTALL_RUBY_VERSION && apt-get clean
RUN ruby-switch --set $INSTALL_RUBY_VERSION

ENV INSTALL_GEM_VERSION 2.2.0
ENV INSTALL_BUNDLER_VERSION 1.5.2
RUN gem2.1 update --system && gem2.1 install bundler -v $INSTALL_BUNDLER_VERSION

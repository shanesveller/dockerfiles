FROM nifty/elixir

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-get update -q && \
    apt-get -y install apt-transport-https curl elixir=1.0.3-2 && \
    curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    echo 'deb https://deb.nodesource.com/node trusty main' > /etc/apt/sources.list.d/nodesource.list && \
    apt-get update -q && \
    apt-get -y install git locales nodejs && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

RUN curl -o /usr/local/bin/mix http://s3.hex.pm/builds/mix/mix && \
    mix local.hex --force && \
    mix local.rebar --force


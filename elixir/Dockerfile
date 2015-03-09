FROM debian:7

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-get update -q && \
    apt-get -y install curl && \
    curl -o /tmp/erlang.deb http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    DEBIAN_FRONTEND=noninteractive dpkg -i /tmp/erlang.deb && \
    rm -rf /tmp/erlang.deb && \
    apt-get update -qq && \
    apt-get install -y elixir=1.0.3-2 && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

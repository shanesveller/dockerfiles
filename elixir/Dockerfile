FROM ubuntu:14.04.2

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-get update -qq && \
    apt-get -y install locales && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN locale-gen en_US.UTF-8

RUN apt-get update -q && \
    apt-get -y install curl && \
    curl -o /tmp/erlang.deb http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    DEBIAN_FRONTEND=noninteractive dpkg -i /tmp/erlang.deb && \
    rm -rf /tmp/erlang.deb && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

RUN apt-get update -q && \
    apt-get install -y elixir && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

RUN mix local.hex --force && \
    mix local.rebar --force

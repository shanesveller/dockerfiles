FROM shanesveller/elixir-lang:latest

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-get update -q && \
    apt-get -y install apt-transport-https && \
    curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    curl -s https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    echo 'deb https://deb.nodesource.com/node_0.12 wheezy main' > /etc/apt/sources.list.d/nodesource.list && \
    echo "deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
    apt-get update -q && \
    apt-get -y install git locales nodejs postgresql-client-9.4 && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*


# Use phusion/baseimage as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md for
# a list of version numbers.
FROM shanesveller/passenger-base:0.9.10

RUN apt-get update -qq && apt-get clean -y

RUN /build/utilities.sh && \
    /build/redis.sh && \
    rm -f /etc/service/nginx/down && \
    rm -f /etc/service/redis/down && \
    apt-get update -qq && \
    apt-get -y install default-jre-headless && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /opt
RUN curl https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.0.tar.gz | tar zxf -
RUN curl https://download.elasticsearch.org/logstash/logstash/logstash-1.4.1.tar.gz | tar zxf -
RUN curl https://download.elasticsearch.org/logstash/logstash/logstash-contrib-1.4.1.tar.gz | tar zxf -
RUN curl https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz | tar zxf -

RUN adduser --shell /sbin/nologin --gecos 'ELK runner' --disabled-password elk

RUN mkdir /etc/service/elasticsearch
ADD es.sh /etc/service/elasticsearch/run

EXPOSE 80 9200

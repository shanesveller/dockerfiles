FROM phusion/passenger-customizable:0.9.10

MAINTAINER Shane Sveller <shanesveller@gmail.com>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get -y install curl && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN /etc/my_init.d/00_regen_ssh_host_keys.sh && \
    curl -k https://github.com/shanesveller.keys >> /root/.ssh/authorized_keys

CMD ["/sbin/my_init"]

EXPOSE 22 80

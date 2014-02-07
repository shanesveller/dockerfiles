FROM phusion/baseimage:0.9.5

MAINTAINER Shane Sveller <shanesveller@gmail.com>

# Remove authentication rights for insecure_key.
RUN rm -f /root/.ssh/authorized_keys /home/*/.ssh/authorized_keys

RUN sed -i 's/main$/main universe/' /etc/apt/sources.list

RUN apt-get update -qq && apt-get upgrade -y && apt-get clean

RUN apt-get install -y python-software-properties build-essential git-core && apt-get clean

ONBUILD RUN apt-get update -qq

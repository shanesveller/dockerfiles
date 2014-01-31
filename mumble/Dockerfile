FROM phusion/baseimage

MAINTAINER Shane Sveller <shanesveller@gmail.com>

ENV HOME /root

# Remove authentication rights for insecure_key.
RUN rm -f /root/.ssh/authorized_keys /home/*/.ssh/authorized_keys

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

# Do not prompt for APT choices via dialog, etc.
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get dist-upgrade -y
RUN apt-get update -qq && apt-get install -y mumble-server

# These will be the server and superuser passwords of the running Mumble server
ENV SERVERPW ChangeMe!
ENV SUPW NoSeriouslyChangeMe!

# Remove existing 'serverpassword=' lines and replace with current ENV value
RUN sed -i '/serverpassword=/d' /etc/mumble-server.ini && echo 'serverpassword=$SERVERPW' >> /etc/mumble-server.ini && murmurd -ini /etc/mumble-server.ini -supw $SUPW

# Add launch script for runit
RUN mkdir /etc/service/mumble
ADD mumble.sh /etc/service/mumble/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Default Mumble port
EXPOSE 64738

WORKDIR /tmp
USER mumble-server
CMD murmurd -fg -ini /etc/mumble-server.ini

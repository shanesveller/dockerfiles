FROM shanesveller/base:latest

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-get update -qq && apt-get install -y mumble-server

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# These will be the server and superuser passwords of the running Mumble server
ENV SERVERPW ChangeMe!
ENV SUPW NoSeriouslyChangeMe!

# Remove existing 'serverpassword=' lines and replace with current ENV value
RUN sed -i '/serverpassword=/d' /etc/mumble-server.ini && echo 'serverpassword=$SERVERPW' >> /etc/mumble-server.ini && murmurd -ini /etc/mumble-server.ini -supw $SUPW

ADD supervisor.conf /etc/supervisor/conf.d/mumble.conf

VOLUME /var/log

# Default Mumble port
EXPOSE 64738

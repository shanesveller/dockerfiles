FROM shanesveller/base:0.9.10

MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-get update -qq && \
    apt-get install -y mumble-server && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# These will be the server and superuser passwords of the running Mumble server
ENV MUMBLE_SERVER_PW ChangeMe!
ENV MUMBLE_SU_PW NoSeriouslyChangeMe!

RUN mkdir /etc/service/mumble
ADD mumble.sh /etc/service/mumble/run

RUN mkdir -p /etc/my_init.d
ADD configure-at-boot.sh /etc/my_init.d/mumble.sh

RUN chmod +x /etc/service/mumble/run /etc/my_init.d/mumble.sh

RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

# Default Mumble port
EXPOSE 64738
CMD /sbin/my_init

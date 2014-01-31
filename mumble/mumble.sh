#!/bin/sh

exec chpst -u mumble-server /usr/bin/murmurd -ini /etc/mumble-server.ini -fg >> /var/log/mumble-server.log 2>&1

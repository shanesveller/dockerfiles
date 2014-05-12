#!/bin/sh
# `/sbin/setuser memcache` runs the given command as the user `memcache`.
# If you omit that part, the command will be run as root.
exec /sbin/setuser mumble-user /usr/bin/murmurd \
-ini /etc/mumble-server.ini \
-fg >> /var/log/mumble-server.log 2>&1

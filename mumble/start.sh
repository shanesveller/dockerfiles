#!/bin/bash

PASSWORD=${MUMBLE_SUPERUSER_PASSWORD:-ChangeMe}

if [ -e "/usr/local/etc/mumble-server.ini" ]; then
    CONFIG=/usr/local/etc/mumble-server.ini
else
    CONFIG=/etc/mumble-server.ini
fi

murmurd -fg -ini $CONFIG -wipessl -wipelogs -supw "$PASSWORD"

exec murmurd -fg -ini $CONFIG

#!/bin/sh

sed -i "s/^serverpassword=/serverpassword=$MUMBLE_SERVER_PW/" /etc/mumble-server.ini
murmurd -ini /etc/mumble-server.ini -supw $MUMBLE_SU_PW

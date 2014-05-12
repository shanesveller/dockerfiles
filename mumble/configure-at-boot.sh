#!/bin/sh

sed -i '/serverpassword=/d' /etc/mumble-server.ini
echo 'serverpassword=$MUMBLE_SERVER_PW' >> /etc/mumble-server.ini
murmurd -ini /etc/mumble-server.ini -supw $MUMBLE_SU_PW

#!/bin/bash

exec ./steamcmd.sh +login anonymous \
     +force_install_dir /opt/steamcmd/dst \
     +app_update 343050 validate \
     +quit

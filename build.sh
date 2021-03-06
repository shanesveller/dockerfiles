#!/bin/bash

NS=shanesveller

# grep 'FROM' **/Dockerfile | awk '!/shanesveller/ {print $2}' | sort | uniq | xargs -n1 docker pull

docker pull shanesveller/elixir-lang
docker pull shanesveller/phoenix
docker build -t $NS/mumble mumble/
docker build -t $NS/teamspeak teamspeak/
docker build -t $NS/steamcmd steamcmd/
docker build -t $NS/dst dst/
docker build -t $NS/minecraft minecraft/
docker build -t $NS/mc-infinity:1.5.1 mc-infinity/

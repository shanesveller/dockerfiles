#!/bin/bash

NS=shanesveller

docker build -t $NS/elixir elixir/
docker build -t $NS/phoenix phoenix/
docker build -t $NS/mumble mumble/
docker build -t $NS/teamspeak teamspeak/
docker build -t $NS/steamcmd steamcmd/
docker build -t $NS/dst dst/
docker build -t $NS/minecraft minecraft/
docker build -t $NS/mc-infinity:1.5.1 mc-infinity/

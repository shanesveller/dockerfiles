#!/bin/bash

NS=shanesveller

docker build -t $NS/elixir elixir/
docker build -t $NS/phoenix phoenix/
docker build -t $NS/mumble mumble/
docker build -t $NS/teamspeak teamspeak/
docker build -t $NS/plug-test plug-test/

#!/bin/bash

NS=shanesveller

docker build -t $NS/elixir elixir/
docker build -t $NS/phoenix phoenix/

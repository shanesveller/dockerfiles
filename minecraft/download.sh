#!/bin/bash

if [ $# -eq 0 ]; then
  URL=http://www.creeperrepo.net/FTB2/modpacks%5EFTBInfinity%5E1_5_1%5EFTBInfinityServer.zip
elif [ "$1" -eq "infinity" ]; then
  URL=http://www.creeperrepo.net/FTB2/modpacks%5EFTBInfinity%5E1_5_1%5EFTBInfinityServer.zip
fi

curl -o /tmp/minecraft.zip $URL && \
    unzip /tmp/minecraft.zip && \
    rm /tmp/minecraft.zip

#!/bin/bash 


docker run --rm -ti --name hassio-builder --privileged \
  -v $PWD/wireguard:/data \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  homeassistant/armv7-builder -t /data --armv7 \
  -i wireguard-armv7  -d disciplina --docker-user #### --docker-password ######
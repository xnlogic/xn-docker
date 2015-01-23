#!/bin/sh

/usr/local/bin/boot2docker up && /usr/local/bin/boot2docker shellinit
export DOCKER_IP=$(boot2docker ip 2>/dev/null)
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2376


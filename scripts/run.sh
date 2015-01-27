#!/bin/sh -e

data_volume=$(docker run -d -v /data busybox)

docker run \
-it --rm \
-P \
--volumes-from $data_volume \
-v ${pwd}/xn_apps:/opt/xn_apps \
--name xn \
xn-torquebox $1
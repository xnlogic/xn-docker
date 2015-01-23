#!/bin/sh

while true; do
  curl -s http://localhost:8080/node-info/ | grep Hostname
  sleep 1
don
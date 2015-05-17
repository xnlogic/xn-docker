#!/bin/sh

set -e

for i in jruby ; do
    docker build -t xnlogic/${i} $i
done

#!/bin/sh

set -e

for i in base java jruby datomic torquebox; do
    docker build -t xn-${i} $i
done
#!/bin/sh

set -e

for i in jruby datomic-free; do
    docker build -t xnlogic/${i} $i
done

#!/bin/sh

set -e

for i in jruby datomic-free api-data; do
    docker build -t xnlogic/${i} $i
done

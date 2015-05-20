#!/bin/sh

set -e

# not building java-7-oracle, api-prod for now

for i in jruby datomic-free api-data kafka nginx; do
    docker build -t xnlogic/${i} $i
done

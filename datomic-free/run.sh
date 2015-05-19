#!/bin/sh

ip=$(hostname -i)
sed "s/alt-host=127.0.0.1/alt-host=$ip/" -i /etc/datomic/xn-free.properties

exec /usr/share/datomic/bin/transactor /etc/datomic/xn-free.properties

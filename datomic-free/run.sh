#!/bin/sh

ip=$(hostname -i)
echo Configuring Datomic for IP: $ip
sed "s/alt-host=.*/alt-host=$ip/" -i /etc/datomic/xn-free.properties

exec /usr/share/datomic/bin/transactor /etc/datomic/xn-free.properties

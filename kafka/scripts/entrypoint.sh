#!/bin/sh
set -e

if [ "$1" = 'consumer' ]; then
  exec $KAFKA_HOME/bin/kafka-console-consumer.sh --zookeeper $KAFKA_PORT_2181_TCP_ADDR:$KAFKA_PORT_2181_TCP_PORT --topic $2 $3 $4
fi

exec "$@"

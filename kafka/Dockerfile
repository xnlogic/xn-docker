# Kafka and Zookeeper
# based on github.com/pocman/docker-kafka
# based on github.com/spotify/docker-kafka  

FROM claudineimatos/java-oracle

ENV DEBIAN_FRONTEND noninteractive

# Install Kafka, Zookeeper and other needed things
RUN apt-get update && \
    apt-get install -y zookeeper wget supervisor dnsutils && \
    rm -rf /var/lib/apt/lists/* && \
	wget -q http://apache.mirrors.spacedump.net/kafka/0.8.2.1/kafka_2.11-0.8.2.1.tgz -O /tmp/kafka_2.11-0.8.2.1.tgz && \
    tar xfz /tmp/kafka_2.11-0.8.2.1.tgz -C /opt && \
    rm /tmp/kafka_2.11-0.8.2.1.tgz

ENV KAFKA_HOME /opt/kafka_2.11-0.8.2.1
ADD scripts/start-kafka.sh /usr/bin/start-kafka.sh

# Supervisor config
ADD supervisor/kafka.conf /etc/supervisor/conf.d/kafka.conf
ADD supervisor/zookeeper.conf /etc/supervisor/conf.d/zookeeper.conf


ADD scripts/entrypoint.sh /usr/bin/entrypoint.sh
ENTRYPOINT ["/usr/bin/entrypoint.sh"]

# 2181 is zookeeper, 9092 is kafka
EXPOSE 2181 9092


CMD ["supervisord", "-n"]

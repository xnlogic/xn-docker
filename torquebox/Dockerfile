FROM xnlogic/datomic

ENV TORQUEBOX_VERSION 3.1.1
ENV DAEMON torquebox
ENV DAEMON_CMD /opt/jboss/torquebox/jboss/bin/standalone.sh
ENV DAEMON_OPTS -b 0.0.0.0
ENV DAEMON_PATH /etc/service/$DAEMON

WORKDIR /opt/jboss

RUN \
    curl --location \
    --url http://torquebox.org/release/org/torquebox/torquebox-dist/$TORQUEBOX_VERSION/torquebox-dist-$TORQUEBOX_VERSION-bin.zip \
    --output tb.zip && \
    unzip tb.zip && \
    mv torquebox-$TORQUEBOX_VERSION torquebox && \
    chmod +x torquebox/jboss/bin/*.sh && \
    rm tb.zip

RUN \
    mkdir -p $DAEMON_PATH && \
    echo "#!/bin/sh \nexec $DAEMON_CMD $DAEMON_OPTS" > $DAEMON_PATH/run && \
    chmod +x /etc/service/$DAEMON/run
  
WORKDIR $XN_HOME  

EXPOSE 8080
EXPOSE 9990

CMD ["/sbin/my_init"]

FROM xn-java

ENV HOME /root
ENV DATOMIC_VERSION 0.9.4755
ENV PATH /usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:$PATH
ENV DAEMON datomic
ENV DAEMON_CMD $HOME/datomic/bin/transactor
ENV DAEMON_OPTS $HOME/datomic/transactor.properties
ENV DAEMON_PATH /etc/service/$DAEMON

RUN mkdir -p /etc/datomic $HOME/temp
ADD transactor.properties $DAEMON_OPTS

RUN \
    curl --location \
    --user-agent 'xnlogic (us@xnlogic.com)' \
    --url "https://my.datomic.com/downloads/free/$DATOMIC_VERSION" \
    --output $HOME/temp/datomic.zip && \
    unzip -u $HOME/temp/datomic.zip -d $HOME/temp && \
    cp -r $HOME/temp/datomic-free-${DATOMIC_VERSION}/* $HOME/datomic && \
    rm -r $HOME/temp

RUN \
    mkdir -p $DAEMON_PATH && \
    echo "#!/bin/sh \nexec $DAEMON_CMD $DAEMON_OPTS" > $DAEMON_PATH/run && \
    chmod +x /etc/service/$DAEMON/run

EXPOSE 4334
EXPOSE 4335
EXPOSE 4336

CMD ["/sbin/my_init"]

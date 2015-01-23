FROM phusion/baseimage:latest

ENV HOME /root
ENV PATH $HOME/bin:$PATH
ENV XN_HOME /opt/xn_apps

VOLUME $XN_HOME

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

RUN \
    apt-get -qq update && \
    apt-get install -qq --force-yes \
    software-properties-common \
    python-software-properties \
    git \
    maven \
    nodejs \
    npm

RUN \
    ln -s /usr/bin/nodejs /usr/bin/node && \
    npm install --loglevel silent -g \
    jshint \
    coffee-script \
    jasmine-node \
    issues

RUN /bin/bash -l -c "echo 'progress-bar' > $HOME/.curlrc"

ENV LEIN_ROOT true
RUN \
    mkdir -p $HOME/bin && \
    curl --location \
    --url https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein \
    --output $HOME/bin/lein && \
    chmod a+x $HOME/bin/lein && \
    lein

RUN \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

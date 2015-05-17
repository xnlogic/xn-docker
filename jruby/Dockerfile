FROM claudineimatos/java-oracle:latest

RUN apt-get update && apt-get install -y \
  curl \
  libc6-dev --no-install-recommends && \
  rm -rf /var/lib/apt/lists/*

ENV JRUBY_VERSION 1.7.20
ENV JRUBY_SHA1 3c11f01d38b9297cef2c281342f8bb799772e481

RUN mkdir /opt/jruby \
  && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz \
  && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c - \
  && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby \
  && rm /tmp/jruby.tar.gz \
  && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1

ENV GEM_HOME /usr/local/bundle
ENV PATH $GEM_HOME/bin:/opt/jruby/bin:$PATH

RUN echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc

RUN gem install bundler \
  && bundle config --global path "$GEM_HOME" \
  && bundle config --global bin "$GEM_HOME/bin"

# don't create ".bundle" in all our apps
ENV BUNDLE_APP_CONFIG $GEM_HOME

CMD [ "irb" ]

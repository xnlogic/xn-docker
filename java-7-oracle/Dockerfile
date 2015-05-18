FROM debian:8
MAINTAINER Claudinei Matos <claudineimatos@gmail.com>

### SET AUTO-ACCEPTABLE SUN JAVA TERM ###
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | \
  debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  debconf-set-selections && \

### ADD UBUNTU ORACLE JAVA REPOSITORIES ###
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" > /etc/apt/sources.list.d/webupd8team-java.list && \
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list.d/webupd8team-java.list

### INSTALL ORACLE JAVA ###
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \
  apt-get update && apt-get install -y oracle-java7-installer

RUN rm -rf /var/cache/apt/*

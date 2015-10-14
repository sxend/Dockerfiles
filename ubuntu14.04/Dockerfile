FROM ubuntu:14.04.1

MAINTAINER sxend

RUN \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y install software-properties-common python-software-properties && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get -y update && \
  apt-get -y install wget && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
  apt-get -y install oracle-java8-installer build-essential && \
  apt-get -y install vim curl git && \
  wget -qO- https://get.docker.com/ | sh

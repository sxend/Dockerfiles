FROM ubuntu:14.04.3

MAINTAINER sxend

ENV TERM=xterm

RUN \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y install software-properties-common python-software-properties && \
  yes | add-apt-repository ppa:openjdk-r/ppa && \
  apt-get -y update && \
  apt-get -y install wget && \
  apt-get -y install openjdk-8-jdk build-essential

RUN apt-get -y install vim curl git

RUN wget -qO- https://get.docker.com/ | sh

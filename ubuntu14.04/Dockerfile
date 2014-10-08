FROM ubuntu:14.04.1

MAINTAINER sxend

# initial update
RUN apt-get -y update && \
    apt-get -y upgrade

# install basic tools
RUN apt-get -y install vim git wget curl build-essential

# install OracleJDK8
RUN apt-get -y install software-properties-common python-software-properties && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get -y update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get -y install oracle-java8-installer

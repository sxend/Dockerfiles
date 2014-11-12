FROM sxend/ubuntu14.04:1.0.1

MAINTAINER sxend

ENV CASSANDRA_HOME /opt/apache-cassandra-2.1.2

RUN \
  apt-get -y install gettext && \
  cd /tmp && \
  wget http://ftp.riken.jp/net/apache/cassandra/2.1.2/apache-cassandra-2.1.2-bin.tar.gz && \
  tar xzf apache-cassandra-2.1.2-bin.tar.gz && \
  mv ./apache-cassandra-2.1.2 ${CASSANDRA_HOME} && \
  mkdir -p /var/lib/cassandra && \
  mkdir -p /var/log/cassandra

ADD ./cassandra.yaml.template ${CASSANDRA_HOME}/conf/cassandra.yaml.template

ADD ./cassandra-start /opt/cassandra-start

EXPOSE 7000 7001 9042 9160

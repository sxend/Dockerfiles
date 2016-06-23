FROM sxend/ubuntu:16.04.2

MAINTAINER sxend

ENV CASSANDRA_HOME /opt/apache-cassandra-3.7

RUN \
  apt-get -y install gettext && \
  cd /tmp && \
  wget http://ftp.riken.jp/net/apache/cassandra/3.7/apache-cassandra-3.7-bin.tar.gz && \
  tar xzf apache-cassandra-3.7-bin.tar.gz && \
  mv ./apache-cassandra-3.7 ${CASSANDRA_HOME} && \
  mkdir -p /var/lib/cassandra && \
  mkdir -p /var/log/cassandra

EXPOSE 7000 7001 9042 9160

CMD ["/bin/bash"]

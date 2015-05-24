FROM sxend/ubuntu14.04:1.0.4

MAINTAINER sxend

ENV CASSANDRA_VERSION 2.2.0-beta1

RUN wget -O /opt/apache-cassandra-${CASSANDRA_VERSION}-bin.tar.gz https://www.apache.org/dist/cassandra/2.2.0/apache-cassandra-2.2.0-beta1-bin.tar.gz && \
    cd /opt && tar xzf apache-cassandra-${CASSANDRA_VERSION}-bin.tar.gz && \
    rm apache-cassandra-${CASSANDRA_VERSION}-bin.tar.gz && \
    mv /opt/apache-cassandra-${CASSANDRA_VERSION} /opt/cassandra

RUN mkdir -p /var/lib/cassandra/data && \
    mkdir -p /opt/cassandra/data/data && \
    mkdir -p /opt/cassandra/data/commitlog && \
    mkdir -p /opt/cassandra/data/saved_caches

ENV CASSANDRA_HOME /opt/cassandra

EXPOSE 7000 7001 9042 9160

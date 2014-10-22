FROM sxend/ubuntu14.04:1.0.1

MAINTAINER sxend

RUN cd /opt && wget -qO- http://ftp.riken.jp/net/apache/archiva/2.1.1/binaries/apache-archiva-2.1.1-bin.tar.gz | tar xz

RUN cd /opt && ln -s apache-archiva-2.1.1 apache-archiva

VOLUME /archiva

EXPOSE 8080

ADD ./run-archiva.sh /opt/apache-archiva/run-archiva.sh

CMD /opt/apache-archiva/run-archiva.sh
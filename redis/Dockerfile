FROM sxend/ubuntu:16.04.2

MAINTAINER sxend

RUN \
  cd /opt && \
  curl http://download.redis.io/releases/redis-3.2.1.tar.gz | tar xz && \
  cd ./redis-3.2.1 && \
  make && make install

CMD ["/bin/bash"]

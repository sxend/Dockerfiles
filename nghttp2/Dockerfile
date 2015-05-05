FROM sxend/ubuntu14.04:1.0.4

MAINTAINER sxend

RUN wget -O /tmp/spdylay-1.3.2.tar.gz https://github.com/tatsuhiro-t/spdylay/releases/download/v1.3.2/spdylay-1.3.2.tar.gz && \
    cd /tmp && tar xzf spdylay-1.3.2.tar.gz

RUN wget -O /tmp/nghttp2-0.7.13.tar.gz https://github.com/tatsuhiro-t/nghttp2/releases/download/v0.7.13/nghttp2-0.7.13.tar.gz && \
    cd /tmp && tar xzf nghttp2-0.7.13.tar.gz

RUN apt-get -y install autoconf automake autotools-dev binutils \
    cython libboost-all-dev libboost-dev libcunit1-dev libev-dev \
    libevent-dev libjansson-dev libjemalloc-dev libssl-dev libtool \
    libxml2-dev make pkg-config python3.4-dev zlib1g-dev

RUN cd /tmp/spdylay-1.3.2 && \
    autoreconf -i && \
    automake && \
    autoconf && \
    ./configure && \
    make && \
    make install

RUN cd /tmp/nghttp2-0.7.13 && \
    autoreconf -i && \
    automake && \
    autoconf && \
    ./configure --enable-asio-lib && \
    make && \
    make install

RUN cp /usr/local/lib/libnghttp2.so.5 /usr/lib/

FROM sxend/ubuntu14.04:1.0.3

MAINTAINER sxend

RUN wget -O /tmp/nginx-1.8.0.tar.gz http://nginx.org/download/nginx-1.8.0.tar.gz && \
    cd /tmp && tar xzf nginx-1.8.0.tar.gz

RUN wget -O /tmp/zlib-1.2.8.tar.gz http://zlib.net/zlib-1.2.8.tar.gz && \
    cd /tmp && tar xzf zlib-1.2.8.tar.gz

RUN wget -O /tmp/openssl-1.0.2a.tar.gz https://www.openssl.org/source/openssl-1.0.2a.tar.gz && \
    cd /tmp && tar xzf openssl-1.0.2a.tar.gz

RUN apt-get -y install libpcre3-dev openssl

RUN cd /tmp/nginx-1.8.0 && \
    ./configure --with-zlib=/tmp/zlib-1.2.8 --with-openssl=/tmp/openssl-1.0.2a && \
    make && \
    make install

RUN wget -O /etc/init.d/nginx https://raw.githubusercontent.com/sxend/nginx-init-ubuntu/1.8.0/nginx && \
    chmod 755 /etc/init.d/nginx 

RUN update-rc.d nginx defaults

FROM sxend/ubuntu14.04

MAINTAINER sxend

ADD ./nginx_signing.key /tmp/nginx_signing.key

RUN apt-key add /tmp/nginx_signing.key

ADD ./sources.list /etc/apt/sources.list

RUN \ 
  apt-get update -y && \
  apt-get install -y nginx

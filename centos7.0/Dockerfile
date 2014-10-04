FROM centos:centos7

MAINTAINER sxend

RUN \
  yum update -y && \
  yum upgrade -y && \
  yum install -y git vim wget yum-priorities && \
  cd /tmp && \
  wget http://ftp.iij.ad.jp/pub/linux/fedora/epel/7/x86_64/e/epel-release-7-2.noarch.rpm && \
  rpm  -Uvh epel-release-7-2.noarch.rpm&& \
  yum update -y && \
  yum upgrade -y


CMD /bin/bash
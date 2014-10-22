FROM sxend/ubuntu14.04:1.0.1

MAINTAINER sxend

RUN cd /opt && wget -qO- http://download.sonatype.com/nexus/oss/nexus-2.10.0-02-bundle.tar.gz | tar xz

RUN cd /opt && ln -s nexus-2.10.0-02 nexus

RUN rm -rf /opt/sonatype-work/nexus

RUN ln -s /nexus /opt/sonatype-work/nexus

VOLUME /nexus

EXPOSE 8081

ENV CONTEXT_PATH /nexus

CMD RUN_AS_USER=root NEXUS_CONTEXT_PATH=$CONTEXT_PATH /opt/nexus/bin/nexus console

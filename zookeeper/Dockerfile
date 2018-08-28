FROM ubuntu:16.04
#
MAINTAINER black

ADD zookeeper-3.4.12 /opt/zookeeper-3.4.12

RUN  \
     mv /opt/zookeeper-3.4.12  /opt/zookeeper  && \
     apt-get update && \
     apt-get install -y default-jdk && \
     mkdir -p /tmp/zookeeper

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper", "/tmp/zookeeper"]

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]

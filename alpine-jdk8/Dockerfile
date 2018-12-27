FROM alpine:3.8
MAINTAINER  cugblack@gmail.com

ADD jdk-8u191-linux-x64.tar.gz /usr/local/

RUN echo "http://mirrors.ustc.edu.cn/alpine/v3.8/main" > /etc/apk/repositories  \
    && echo "http://mirrors.ustc.edu.cn/alpine/v3.8/community" >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add --no-cache ca-certificates wget \
    && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/cugblack/dockerfile/master/alpine-jdk8/sgerrand.rsa.pub --no-check-certifica \
    && wget https://github.com/cugblack/dockerfile/raw/master/alpine-jdk8/glibc-2.28-r0.apk  --no-check-certificate \
    && apk add glibc-2.28-r0.apk

ENV JAVA_HOME=/usr/local/jdk1.8.0_191
ENV CLASSPATH=$JAVA_HOME/bin
ENV PATH=.:$JAVA_HOME/bin:$PATH


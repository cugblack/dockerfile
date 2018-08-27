FROM ubuntu:16.04

MAINTAINER black
#如无需要，可注释掉下面的两行，https支持
ADD hello.crt /etc/ssl/certs/hello.crt
ADD hello.key /etc/ssl/private/hello.key

ENV TZ=Asia/Shanghai
RUN \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt-get update -y &&  apt-get install -y curl vim lrzsz supervisor  && \
    mkdir -pv /tmp2/uploads && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs && \
    npm install pm2 -g



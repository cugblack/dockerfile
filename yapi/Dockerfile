FROM node:9.2-alpine as builder 
RUN apk add --no-cache git python make openssl tar gcc
ADD yapi.tgz /home/
RUN mkdir -pv /api/vendors && ls -al /home && mv /home/yapi.tgz /api/vendors
RUN cd /api/vendors && \
    npm install --production --registry https://registry.npm.taobao.org
FROM node:9.2-alpine
MAINTAINER cugblack@gmail.com.com
ENV TZ="Asia/Shanghai" HOME="/"
WORKDIR ${HOME}
COPY --from=builder /api/vendors /api/vendors
COPY config.json /api/
EXPOSE 3000
ENTRYPOINT ["node"]


FROM cugblackcugblack/nginx:1.14-alpine
ADD auto-reload.sh /root/auto-reload.sh
ADD start.sh /root/start.sh

WORKDIR /root/
RUN chmod a+x /root/auto-reload.sh \
    && apk add --no-cache inotify-tools
CMD ["/bin/sh", "/root/start.sh"]

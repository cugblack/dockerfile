FROM openresty/openresty:1.13.6.2-1-centos
ADD auto-reload.sh /root/auto-reload.sh
ADD start.sh /root/start.sh

ADD inotify-tools-3.14-8.el7.x86_64.rpm /root/inotify-tools-3.14-8.el7.x86_64.rpm 
WORKDIR /root/
RUN chmod a+x /root/auto-reload.sh \
    && rpm -ivh inotify-tools-3.14-8.el7.x86_64.rpm \
    && rm -rf inotify-tools-3.14-8.el7.x86_64.rpm
CMD ["/bin/bash", "/root/start.sh"]

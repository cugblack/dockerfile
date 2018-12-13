FROM nginx:latest


ADD  index.html /tmp/index.html

RUN  mkdir  -pv /srv/www/html && \
     mv /tmp/index.html /usr/share/nginx/html/index.html && \
     chmod 777 -R /usr/share/nginx/html/

FROM alpine

LABEL maintainer cugblack <cugblack@gmail.com>

RUN apk --update add git openssh  \
    && rm -rf /var/lib/apt/lists/*  \
    && rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]

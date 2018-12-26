# dockerfile for nodejs-8
---

分别使用ubuntu：16.04、以及alpine-3.8作为基础镜像（线上环境受限，如有特殊需求可自行选择其他镜像），镜像包含nodejs-8，以及pm2工具。

## 使用

### docker

```
$ docker build -t my-nodejs-app .
$ docker run -it --rm --name my-running-app my-nodejs-app
```

### docker-compose
```
version: "2"
services:
  node:
    image: "cugblackcugblack/node:8-alpine"
    user: "node"
    working_dir: /home/node/app
    environment:
      - NODE_ENV=production
    volumes:
      - ./:/home/node/app
    expose:
      - "8081"
    command: "npm start"

$ docker-compose up -d

```

> Tips
> > 详情请查看[官方文档](https://hub.docker.com/_/node)

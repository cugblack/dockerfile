# Usage of node:8-alpine
---

### 时区默认采用UTC时间，如果需要修改为上海时间，可以自行在Dockerfile内增加以下内容：

```
    RUN  apk update && apk add --no-cache tzdata \
         && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
         && echo "Asia/Shanghai" > /etc/timezone 
```

  然后重新构建镜像即可。

### docker 使用此镜像
`docker run -it --rm --name my-running-script -v "$PWD":/usr/src/app -w /usr/src/app cugblackcugblack/node:8-alpine node your-daemon-or-script.js`

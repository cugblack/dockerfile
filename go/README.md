# Usage of golang image
---

## 使用[官方镜像](1.11/official/Dockerfile)

      docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.8 go build -v

>tips

-  --rm: 运行之后即删除容器

   -v  : 挂载代码路径到容器内的 `/usr/src/myapp`

   -w  : 指定工作目录

   golang:1.8: 镜像名称:镜像版本

   go build -v: 在容器内执行的命令  

## 使用[自定义镜像](1.11/customize/Dockerfile)，以官方镜像为基础镜像:

      docker run -it --rm --name my-running-app my-golang-app



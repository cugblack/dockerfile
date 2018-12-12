# Usage of python image:

      docker run -v $PWD/myapp:/src/myapp -w /src/myapp python:2.7.15-alpine3.8 python app.py


## 参数：

  -v: 挂在目录，$PWD/myapp为宿主机（容器外的路径） /src/myapp为挂载到容器内的路径

  -w  指定工作路径，相当于Dockerfile里的WORKDIR

  python:2.7.15-alpine3.8： 镜像名

  python app.py： 在容器内执行命令，运行脚本

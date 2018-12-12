# Usage of python image:

      docker run -v $PWD/myapp:/src/myapp -w /src/myapp python:2.7.15-alpine3.8 python app.py


## 参数：

  -v: 挂在目录，$PWD/myapp为宿主机（容器外的路径） /src/myapp为挂载到容器内的路径

  -w  指定工作路径，相当于Dockerfile里的WORKDIR

  python:2.7.15-alpine3.8： 镜像名

  python app.py： 在容器内执行命令，运行脚本


# 根据官方镜像来自行构建python镜像：

## python3:

### Dockerfile
```
FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
or (if you need to use Python 2):
```

### Dockerfile

```
FROM python:2

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
`

### 构建镜像：

      docker build -t my-python-app .

      docker run -it --rm --name my-running-app my-python-app

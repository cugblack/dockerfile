# yapi- 

## 部署方式

### 部署数据库

docker run -d --name mongo-yapi -v mongo_data_yapi:/data/db mongo

---

### 初始化数据库及管理员账号

docker run -it --rm   --link mongo-yapi:mongo   --entrypoint npm   --workdir /api/vendors   registry.cn-hangzhou.aliyuncs.com/anoy/yapi   run install-server

---

### 启动Yapi服务

docker run -d   --name yapi   --link mongo-yapi:mongo   --workdir /api/vendors   -p 3000:3000   registry.cn-hangzhou.aliyuncs.com/anoy/yapi   server/app.js


> [官方连接](https://github.com/YMFE/yapi)

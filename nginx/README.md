# 基于[官方镜像](official/Dockerfile)构建自定义镜像

      docker run --name nginx -d -p 8080:80 cugblackcugblack/nginx:v1.1.3

# k8s configmap 热加载

在k8s集群里，考虑到会不定时修改nginx的配置文件，所以需要将nginx的配置文件路径挂载出来，结合configmap，为了能够让他热生效，采用`inotifywait`实时监控配置所在文件夹，一旦文件发生改变，则触发`nginx -s reload`

详细配置文件以及dockerfile见[配置文件与Dockerfile](new/)

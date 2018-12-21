# Usage of image 

```

docker run --restart=always -dt -p 8490:8490 cugblackcugblack/shadowsocks2 -s "ss://AEAD_CHACHA20_POLY1305:PASSWD@:8490"

```
>Tips
>> entrypoint.sh文件可能会存在权限问题，制作镜像时，记得改一下文件权限

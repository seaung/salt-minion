salt-minion docker images


##### 构建镜像
```bash
docker build -t salt-minion:0.0.0 .
```

##### 如何运行?
```bash
docker run --name salt-t -e "MINION_ID=salt_id" -e "SALT_MASTER=192.168.31.234" -e "SALT_MASTER_PORT=4506"
```

##### 参数说明
1. MINION_ID: minion id
2. SALT_MASTER: salt-master IP地址
3. SALT_MASTER_PORT: salt-master 端口


---
that's all

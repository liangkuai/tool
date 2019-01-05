#!/bin/bash

echo '******************** Docker 下 Neuxs 安装 & 配置开始 ********************'

echo '1. 下载镜像 ......'
docker pull sonatype/nexus3

echo '2. 创建数据卷 ......'
docker volume create nexus_data

echo '3. 启动容器，运行服务 ......'
docker container run -d \
    --name my_nexus \
    -p 8081:8081 \
    -v nexus_data:/nexus_data \
    sonatype/nexus3

echo '******************** Docker 下 Neuxs 安装 & 配置结束 ********************'

#!/bin/bash

echo 'Maven 安装 & 配置 ......'

echo '1. 下载 Maven ......'
wget http://mirrors.hust.edu.cn/apache/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz -P /tmp

echo 2. '解压到 /opt ......'
tar -zxv -f /tmp/apache-maven-3.6.0-bin.tar.gz -C /opt

echo '3. 链接到 PATH 中 ......'
ln -s /opt/apache-maven-3.6.0/bin/mvn /usr/loca/bin/mvn

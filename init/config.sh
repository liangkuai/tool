#!/bin/bash

download_url=http://mirrors.hust.edu.cn/apache/maven/maven-3/3.6.0/binaries
download_file=apache-maven-3.6.0-bin.tar.gz
pkg_path=/tmp
install_path=/opt
maven=apache-maven-3.6.0
local_bin=/usr/local/bin

echo '******************** Maven 安装 & 配置开始 ********************'

echo "1. 下载 Maven 到 $pkg_path ......"
if [ ! -f "$pkg_path/$download_file" ]; then
    wget "$download_url/$download_file" -P "$pkg_path"
fi

echo 2. "解压到 $install_path ......"
tar -zxv -f "$pkg_path/$download_file" -C "$install_path"

echo '3. 链接到 PATH 中 ......'
ln -s "$install_path$maven/bin/mvn" "$local_bin/mvn"

echo '******************** Maven 安装 & 配置结束 ********************'

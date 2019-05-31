#!/bin/bash

# $1: 需要添加的 MySQL 配置文件路径

mysql_config_dir='/etc/mysql'
mysql_date_dir='/var/lib/mysql'
root_pwd=root


# 添加 MySQL 配置目录
if [ ! -z $1 ]; then
    if [ ! -d ${mysql_config_dir} ]; then
        mkdir ${mysql_config_dir}
    fi

    if [ ! -d "${mysql_config_dir}/$1" ]; then
        cp $1 ${mysql_config_dir}
    fi
fi

# 创建 MySQL 数据目录
if [ ! -d ${mysql_date_dir} ]; then
    mkdir ${mysql_date_dir}
fi


# 创建本地 MySQL 实例
# FIXME: 权限问题
docker container run \
    --name mysql_local \
    -p 3306:3306 \
    -v /var/lib/mysql:/var/lib/mysql \
    -v /etc/mysql/mysqld.cnf:/etc/mysql/mysql.conf.d/mysqld.cnf \
    -e MYSQL_ROOT_PASSWORD=${root_pwd} \
    -d mysql:5.7

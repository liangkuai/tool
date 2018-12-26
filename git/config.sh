#!/bin/bash

echo 'Git 配置'

# 基本用户信息配置
read -p '是否配置基本用户信息？(y/n): ' info_config

if [ -z "$info_config" ] || [ "$info_config" = 'y' -o "$info_config" = 'Y' ]; then
    read -p '用户名: ' user_name
    git config --global user.name $user_name

    read -p '邮箱: ' user_mail
    git config --global user.email $user_mail

    read -p '邮箱: ' editor
    git config --global core.editor $editor

    echo '当前用户全局配置文件: ~/.gitconfig\n'
fi

# 生成 SSH 密钥
read -p '是否生成 SSH 密钥，用来访问远程 Git 服务器？(y/n): ' ssh_config

ssh_config_path="$HOME/.ssh"

if [ -z "$ssh_config" ] || [ "$ssh_config" = 'y' -o "$ssh_config" = 'Y' ]; then
    if [ ! -d "$ssh_config_path" ]; then
        mkdir ~/.ssh
        echo '创建文件夹: ~/.ssh'
    fi

    if [ ! -f "$ssh_config_path/id_rsa" -o ! -f "$ssh_config_path/id_rsa.pub" ]; then
        echo '开始生成 SSH 密钥'
        ssh-keygens
    fi
fi
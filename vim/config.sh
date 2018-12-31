#!/bin/bash

echo 'Vim 配置'

# Vundle 安装
read -p '是否安装 Vundle ？(y/n): ' install_vundle

if [ -z "$install_vundle" ] || [ "$install_vundle" = "y" -o "$instanll_vundle" = 'Y' ]; then

    echo '1. 下载 Vundle 到 ~/.vim/bundle/Vundle.vim'
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    echo '2. 配置到 ~/.vimrc'
    echo -e '\n\n\n" Vundle 配置开始' >> ~/.vimrc
    echo 'set nocompatible                  " 必需' >> ~/.vimrc
    echo 'filetype off                      " 必需' >> ~/.vimrc

    echo -e '\n" 设置运行时路径以包括Vundle和初始化' >> ~/.vimrc
    echo 'set rtp+=~/.vim/bundle/Vundle.vim' >> ~/.vimrc
    echo 'call vundle#begin()' >> ~/.vimrc

    echo -e '\n" 必需，使用Vundle管理Vundle' >> ~/.vimrc
    echo "Plugin 'VundleVim/Vundle.vim'" >> ~/.vimrc

    echo -e '\n" 添加插件到此处' >> ~/.vimrc

    echo -e '\n' >> ~/.vimrc
    echo 'call vundle#end()                    "必需' >> ~/.vimrc
    echo 'filetype plugin indent on            "必需' >> ~/.vimrc
    echo '"Vundle 配置结束' >> ~/.vimrc

    vim +PluginInstall +qall
fi
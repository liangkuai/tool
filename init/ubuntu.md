## JDK

#### 1. OpenJDK

```bash
$ sudo apt-get install openjdk-8-jre
```

#### 2. Oracle JDK

```bash
$ sudo add-apt-repository ppa:webupd8team/java
$ sudo apt-get update
```

#### 3. 切换 JDK

```bash
$ sudo update-alternatives --config java
$ sudo update-alternatives --config javac
```

## IDEA

参考：[IntelliJ IDEA 简体中文专题教程 —— judasn](https://github.com/judasn/IntelliJ-IDEA-Tutorial)

## VSCode

```bash
# 下载 .tar.gz 压缩包
$ sudo tar -zxv -f ~/下载/code-stable-1545156735.tar.gz -C /opt
$ mv VSCode-linux-x64 vscode
```

## Chrome

#### 1. [Linux Software Repositories](https://www.google.com/linuxrepositories/)

```bash
$ wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
$ sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
$ sudo apt-get update 
$ sudo apt-get install google-chrome-stable
```

#### 2. Chrome 离线安装包

参考：[Google Chrome 离线安装包的官方下载地址是什么？ —— 知乎](https://www.zhihu.com/question/19981495)

## ShadowSocks-Qt5

#### 1. client

```bash
$ sudo add-apt-repository ppa:hzwhuang/ss-qt5
$ sudo apt-get update
$ sudo apt-get install shadowsocks-qt5
```

#### 2. Chrome 插件：SwitchyOmega

参考：[Proxy SwitchyOmega：Chrome 和 Firefox 浏览器上的代理扩展程序](https://www.switchyomega.com/)

## Docker

```bash
# 安装安全传输相关软件
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# 添加密钥
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 添加 PPA
$ sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

# 安装 Docker CE
$ sudo apt-get update
$ sudo apt-get install docker-ce

# 启动 Docker CE
$ sudo systemctl enable docker
$ sudo systemctl start docker

# 建立 docker 用户组
$ sudo groupadd docker
$ sudo usermod -aG docker $USER
```

## [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)

```bash
$ sudo sh -c 'echo "deb https://download.virtualbox.org/virtualbox/debian xenial contrib" >> /etc/apt/sources.list.d/google.list'

$ wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add  -

$ sudo apt-get update 
$ sudo apt-get install virtualbox-6.0
```

## 网易云音乐

```bash
# 官网下载 .deb 包之后
$ sudo dpkg -i netease-cloud-music_1.1.0_amd64_ubuntu.deb

# 如果有依赖问题
# $ sudo apt-get -f install
# $ sudo dpkg -i netease-cloud-music_1.1.0_amd64_ubuntu.deb
```

其他修改参考：[Ubuntu 18.04 装了网易云音乐，难道只能用 sudo 启动吗？](https://www.zhihu.com/question/277330447)

## 美化

```bash
# 桌面管理工具
$ sudo apt-get install unity-tweak-tool

# 主题
$ sudo add-apt-repository ppa:noobslab/themes
$ sudo apt-get update

# 图标
$ sudo add-apt-repository ppa:noobslab/icons
$ sudo apt-get update
$ sudo apt-get install ultra-flat-icons
```

# Homebrew


### 1. 常用命令

1. 查找软件

    ```bash
    brew search 软件名
    ```

2. 查看软件详细信息

    ```bash
    brew info 软件名
    ```

3. 查看软件的详细安装目录

    ```bash
    brew list 软件名
    ```


### 2. Homebrew 安装的两种方式

Homebrew 安装软件分为两种情况：

#### 2.1 系统没有自带的

这个没什么好说的，因为如果系统没有自带，我们安装完相应的软件之后就自动的将编译好的二进制文件软链接到 PATH 中，这样才会生效。

#### 2.2 系统自带的

如果系统自带的有这个软件，那问题就不好办了，是直接覆盖呢，还是应该给用户一些选择？本着上面说过的原则，尽量少的影响原来的目录树，那么它在安装完二进制文件之后并没有做建软链的那一步操作，这就是所谓的 `keg-only` 的意思了。

那么，如果我要更新 wget，而 OS X 发行时本就是带着 wget 的，应该怎么办呢？当然作者已经替我们想到了这一点，

```bash
brew link wget --force
```

这样，它就会把需要的二进制文件链接到 PATH 中，要注意这时这些路径中是存在相应的二进制文件的，正是 Homebrew 不敢确定是不是要直接帮我们做这些操作，才给我们提供了这个命令。


### 3. FAQ

#### 3.1 安装报错：“Failed to connect to raw.githubusercontent.com port 443: Operation timed out”

改用镜像

```bash
# 安装
/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/install.sh)"

# 卸载
/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/uninstall.sh)"
```

#### 3.2 Homebrew 中提示的 keg-only 是什么意思？

首先，brew 本身是酿造、酿酒的意思，会用这个字的原因是 Homebrew 的安装方式为下载源代码到本地回来做编译，由于是在自己电脑做本地编译，所以这个工具叫做 brew at Home，自家酿酒。

酿酒需要有配方（formula），当你需要安装套件时，流程就是使用 brew 命令去根据配方 formula ，酿造出一桶（keg）酒来。所以 keg 指的是整个编译完成的套件资料夹。

再来，放置套件的位置在 `/usr/local/Cellar`，Cellar 就是地窖，一桶一桶酿好的酒当然要存放在地窖里面了。所以编译完成的套件资料夹（keg）预设目录在 `/usr/local/Cellar`。

最后回到「keg-only」这个词，字面上意思现在就很清楚，表示这个套件只会存放在桶里，不会跑出桶外面；实际上的行为是 brew 不会帮你做 symlink 到 `/usr/local`，避免你的原生系统内还有一套名称相同的套件，从而引起冲突，所以如果遇到安装或者更新套件后提示某个套件是 keg-only ，那么你就需要自己去做 symlink 的事情了。

其实这就引出了 Homebrew 安装套件的两种不同方式了。


## Homebrew Cask

Homebrew Cask 是 Homebrew 的扩展，借助它可以方便地在 macOS 上安装图形界面程序。Homebrew 中文含义为自制、自酿酒，Cask 中文含义为桶、木桶，桶装酒是一种成品，也就是说每一个 homebrew cask 都可以直接使用的。

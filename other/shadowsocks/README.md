## Shadowsocks

### server

> 目前有4个衍生版本的SS:
> 
> - Shadowsocks-go: 二进制编译, 轻量, 快速
> - Shadowsocks-python: 无功无过，也是最原始的版本，近年来更新速度略慢
> - Shadowsocks-libev: 一直处于更新之中，最大的特点是支持obfs混淆
> - ShadowsocksR: 从作者到产品都极负争议性, obfs混淆模式开创者, 但是前一段时间SSR服务器普遍遭到GFW的封杀.

1. 一键安装脚本（From https://teddysun.com）

    ```bash
    wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh

    chmod +x shadowsocks-all.sh

    ./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
    ```

2. 安装选项（建议）
    1. 加密方式推荐 chacha20-itef-poly1305,
    2. 端口可以尽量设置高一点,避免443, 1080等常用端口,
    3. 安装 simple-obfs , 选择 http 模式

3. 卸载

    ```bash
    ./shadowsocks-all.sh uninstall
    ```

4. 常用

    - 启动：/etc/init.d/shadowsocks-libev start
    - 停止：/etc/init.d/shadowsocks-libev stop
    - 重启：/etc/init.d/shadowsocks-libev restart
    - 查看状态：/etc/init.d/shadowsocks-libev status

5. 配置文件

    ```bash
    /etc/shadowsocks-libev/config.json
    ```

6. BBR

    ```bash
    wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
    
    chmod +x bbr.sh
    
    ./bbr.sh
    ```

### client

- MAC：[ShadowsocksX-NG](https://github.com/shadowsocks/ShadowsocksX-NG)
- Linux：[Shadowsocks-Qt5 (deprecated)](https://github.com/shadowsocks/shadowsocks-qt5)

```
// 插件
obfs-local

// 插件选项
obfs=http;obfs-host=www.baidu.com
```

### 参考
- [shadowsocks - GitHub](https://github.com/shadowsocks)
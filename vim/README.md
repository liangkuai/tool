
### 字体

- [powerline](https://github.com/powerline/fonts)
    ```
    sudo apt-get install fonts-powerline
    ```

### Vundle 常用插件

#### 1. 主题: [gruvbox](https://github.com/morhetz/gruvbox)

1. 查看终端是否支持 256 色
    ```bash
    $ (x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)
    ```
2. vim 配置
    ```
    " 主题
    Plugin 'morhetz/gruvbox'

    " 主题 gruvbox 配置
    set background=dark     " 设置暗系背景
    set t_Co=256            " 开启 256 色支持
    colorscheme gruvbox     " 设置主题
    ```

#### 2. 状态栏：[vim-airline](https://github.com/vim-airline/vim-airline)
```
" 状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" 状态栏 vim-airline 配置
set laststatus=2                        " 总是显示状态栏
let g:airline_powerline_fonts = 1       " 支持 powerline 字体。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
let g:airline_theme='powerlineish'      " vim-airline 主题配置
```

#### 3. 文件管理：[nerdtree](https://github.com/scrooloose/nerdtree)
```
" 文件管理
Plugin 'scrooloose/nerdtree'
```

#### 4. 缩进：[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
```
" 缩进
Plugin 'nathanaelkane/vim-indent-guides'

" 缩进 vim-indent-guides 配置
"let g:indent_guides_enable_on_vim_startup = 1      " 默认启动
let g:indent_guides_start_level=2                   " 从第二层开始可视化显示缩进
let g:indent_guides_guide_size=1                    " 色块宽度
```
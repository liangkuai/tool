
### 字体

- [powerline](https://github.com/powerline/fonts)

    ```
    sudo apt-get install fonts-powerline
    ```

### Vundle 常用插件

#### 1. 状态栏：[vim-airline](https://github.com/vim-airline/vim-airline)

```
" 状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim-airline 配置
let g:airline_powerline_fonts = 1       " 支持 powerline 字体
let g:airline_theme='powerlineish'      " vim-airline 主题配置
```
# spf13-vim

thebigfish's fork from Steve Francia's Vim Distribution [README](https://github.com/spf13/spf13-vim/blob/3.0/README.markdown)

## install for linux

### 安装spf13
- 下载文件 bootstrap.sh
- ./bootstrap.sh
- 仓库 clone 到 ~/.spf13-vim-3
- 插件下载到 ~/.vim/bundle
- 直接维护仓库 ~/.spf13-vim-3
- 启动 vim, 运行 :BundleInstall

### 安装其它组件
- sudo apt-get install ctags
- gtags
```bash
wget https://ftp.gnu.org/pub/gnu/global/global-6.6.5.tar.gz
tar zcvf global-6.6.5.tar.gz
./configure
make
sudo make install

```

## install for windows

### python

python3.5.4 64bit  
对应网盘文件 *python-3.5.4-amd64.exe*  
python 要起一个ycm后台  

### gvim

gvim 版本需要大于 8.0， 并且支持python2、python3  
下载编译好的版本：

[Windows Vim binaries](https://tuxproject.de/projects/vim/)
对应网盘文件 *complete-x64-vim8.1.exe*  
解压至任意文件夹  
检测配置环境变量是否支持python  

```bash
:py3 print('hello')
hello
:py print('hello')
hello
```

### ycm

下载已经编译好的版本  
[YouCompleteMe-for-windows](https://github.com/CuriousFu/YouCompleteMe-for-windows.git)  
对应网盘文件 *YouCompleteMe-python3.5.7z*  
解压至 bundle 文件夹 如`C:\Users\bigfish\.vim\bundle`  
spf13 中已经配置好 youcompleteme 选项  

### 安装 spf13

- 下载 [spf13-vim-windows-install.cmd](https://github.com/TheBigFish/spf13-vim/blob/3.0/spf13-vim-windows-install.cmd)
- 管理员模式打开 cmd 然后运行安装
- 会同时安装 youcompleteme 插件。插件安装后手动删除此插件
- 将 YouCompleteMe-for-windows 对应的文件解压至安装 bundle 文件夹

## 安装 msys1.0

对应网盘文件 *MSYS-1.0.10*
加入path

## 注意事项
- python-mode 需要手动安装
  `git clone --recurse-submodules https://github.com/python-mode/python-mode`
  
### 不确定是否是必须的步骤

- 已安装 LLVM-9.0.0-win64.exe
- 已安装 Microsoft Visual C++ Redistributable 2017 （VC_redist.x64.exe）

## 插件

### python-mode
- 运行
:PymodeRun 或者 `<C-d>r`
- 配置 venv  
`:PymodeVirtualenv "env"`  # venv 当前文件目录下的 vitual 环境文件夹  
或者在配置文件中设置
```
let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = "venv"
```


## 快捷键

<ctrl+e> NERDTreeTabsToggle
- vim-easymotion
  - `<leader><leader>w` : 跳转到以单词为分格位置
  - `<leader><leader>f` : 查找并快速跳转
  - `<leader><leader>b` : 反向跳转到以单词为分格位置
  - `<leader><leader>F` : 反向查找并快速跳转
  - `<leader><leader>j` : 行为单位正向跳转
  - `<leader><leader>k` : 行为单位反向跳转
  - `<leader><leader>h` : 行内正向跳转
  - `<leader><leader>l` : 行内反向跳转
  - 
- ycm:
  - `<leader>l` : 跳转到声明
  - `<leader>f` : 跳转到定义
  - `<leader>g` : 跳转到定义或声明

- cscope
  - `<leader>fa`: 交互式查找
  - `<leader>fl` : 局部列表
  - `<leader>fs`: Find this C symbol
  - `<leader>fg`: Find this definition
  - `<leader>fd`: Find functions called by this function
  - `<leader>fc`: Find functions calling this function
  - `<leader>ft`: Find this text string
  - `<leader>fe`: Find this egrep pattern
  - `<leader>ff`: Find this file
  - `<leader>fi`: Find files #including this file

- 鼠标
zz: 居中
zt: 页首
zb: 页尾


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"自动识别文件编码
Plugin 'FencView.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"在输入()，""等需要配对的符号时，自动帮你补全剩余半个
Plugin 'AutoClose'

"神级插件，ZenCoding可以让你以一种神奇而无比爽快的感觉写HTML、CSS
Plugin 'ZenCoding.vim'

"在()、""、甚至HTML标签之间快速跳转
Plugin 'matchit.zip'

"显示行末的空格
Plugin 'ShowTrailingWhitespace'

"JS代码格式化插件
Plugin '_jsbeautify'

"迄今位置最好的自动VIM自动补全插件了吧
"Vundle的这个写法，是直接取该插件在Github上的repo
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"tab setting {
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
"""}"

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set scrolloff=3
set fenc=utf-8
set autoindent
set hidden
set noswapfile
set encoding=utf-8

""显示行号
set number

"设置大小写敏感和聪明感知(小写全搜，大写完全匹配)
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

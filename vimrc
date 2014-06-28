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
"Plugin 'AutoClose'
Plugin 'Auto-Pairs'

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

"必不可少，在VIM的编辑窗口树状显示文件目录
Plugin 'The-NERD-tree'

"让代码更加易于纵向排版，以=或,符号对齐
Plugin 'Tabular'

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
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
""自动换行
set nowrap

" Search settings {
"设置大小写敏感和聪明感知(小写全搜，大写完全匹配)
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
"}

"Color Settings {
"set colorcolumn=85           "彩色显示第85行
"set t_Co=256                 "设置256色显示
"set background=dark          "使用color solarized
"set cursorline               "设置光标高亮显示
"set cursorcolumn             "光标垂直高亮
"set ttyfast
"set ruler
"set backspace=indent,eol,start

"}

"光标大小设置 {
"set guicursor=n-c-v:ver1-ncvCursor
"set guicursor=i:block-iCursor-blinkon0,v:block-vCursor
"}

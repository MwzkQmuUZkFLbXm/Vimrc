" be iMproved, required
set nocompatible
" always show the statusline
set laststatus=2
let mapleader=";"

" 定义快捷键到行首和行尾 {
nmap lb 0
nmap le $
" 设置快捷键将选中文本块复制至系统剪贴板
" nmap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
" nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>wq :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <C-L> <C-W><C-L>
" 跳转至左方的窗口
nnoremap <C-H> <C-W><C-H>
" 跳转至上方的子窗口
nnoremap <C-K> <C-W><C-K>
" 跳转至下方的子窗口
nnoremap <C-J> <C-W><C-J>
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %
"}

" required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" solarized colorscheme
"Plugin 'altercation/vim-colors-solarized'

" markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" 标签插件
" Ubuntu installation
" sudo apt-get install Exuberant ctags
Plugin 'majutsushi/tagbar'

" golang
Plugin 'fatih/vim-go'

" Plugin 'tComment'
Plugin 'The-NERD-Commenter'


" 在输入()，""等需要配对的符号时，自动帮你补全剩余半个
Plugin 'Auto-Pairs'

" 神级插件，ZenCoding可以让你以一种神奇而无比爽快的感觉写HTML、CSS
"Plugin 'ZenCoding.vim'

" A Vim plugin for visually displaying indent levels in code
Plugin 'Yggdroot/indentLine'

" 在()、""、甚至HTML标签之间快速跳转
Plugin 'matchit.zip'


" JS代码格式化插件
"Plugin '_jsbeautify'

" VIM自动补全插件
Plugin 'Valloric/YouCompleteMe'

"美化状态栏
Plugin 'vim-airline'


"必不可少，在VIM的编辑窗口树状显示文件目录
Plugin 'The-NERD-tree'

" support swift
Plugin 'toyamarinyon/vim-swift'

" all of your Plugins must be added before the following line
" required
call vundle#end()

" maksimr/vim-jsbeautify
" let g:editorconfig_Beautifier = $HOME/.editorconfig

" yggdroot/indentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'

" youcompleteMe settings {
set completeopt-=preview

let g:ycm_add_preview_to_completeopt = 0

let g:ycm_filetype_whitelist = {
            \ 'sh': 1,
            \ 'zsh': 1,
            \ 'python': 1,
            \ 'javascript': 1,
            \ 'html': 1,
            \ 'ruby': 1,
            \ 'go': 1,
            \ 'css': 1,
            \ }

"let g:ycm_filetype_blacklist = {
"      \ 'tagbar' : 1,
"      \ 'qf' : 1,
"      \ 'notes' : 1,
"      \ 'markdown' : 1,
"      \ 'unite' : 1,
"      \ 'text' : 1,
"      \ 'vimwiki' : 1,
"      \ 'pandoc' : 1,
"      \ 'infolog' : 1,
"      \ 'mail' : 1
"      \}
"}

" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list
nnoremap <Leader>tt :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1"
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_go = {
            \ 'ctagstype': 'go',
            \ 'kinds' : [
            \'p:package',
            \'f:function',
            \'v:variables',
            \'t:type',
            \'c:const'
            \]
            \}

" NERD-tree settings {
" 使用NERDTree插件查看工程文件。设置快捷键，速记:file list
nmap<leader>nt :NERDTreeToggle<cr>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree子窗口中不显示冗余帮助信息
let NERDTreeMinimaUI=1
" 删除文件时自动删除对应buffer
let NERDTreeAutoDEleteBuffer=1
"}

" 基于缩进或语法进行代码折叠
"set fdm=indent
" set fdm=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

"启动自动补全
" required
filetype plugin indent on
"打开语法高亮
syntax enable
"开启语法类型侦测
syntax on
" To ignore plugin indent changes, instead use:
" 针对不同的文件类型采用不同的缩进格式
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
"set foldmethod=indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType html setlocal tabstop=4 shiftwidth=4 softtabstop=4
"""}"

set fileencodings=ucs-bom,utf-8,cp936,gbk,gb2312,gb18030,big5,euc-jp,euc-kr,latin1
set scrolloff=3
set fenc=utf-8
set autoindent
set hidden
set noswapfile
set encoding=utf-8

""显示行号
set number
""禁止折行
set nowrap

" Search settings {
"设置大小写敏感和聪明感知(小写全搜，大写完全匹配)
"搜索时大小写不敏感
set ignorecase
set smartcase
set gdefault
"开启实时搜索功能
set incsearch
set showmatch
set hlsearch
" vim自身命令行模式智能补全
set wildmenu
"}

"Color Settings {
"彩色显示第85行
set colorcolumn=85
"设置256色显示
set t_Co=256
"背景
set background=dark
"主题选择
"colorscheme molokai
"let g:molokai_original = 1
let g:ctags_statusline=1

"下划线
"set cursorline

""光标垂直高亮
set cursorcolumn

set ttyfast
"右下角显示光标位置的状态行
set ruler
set backspace=indent,eol,start
"}

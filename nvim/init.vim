"===========================================================================""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let      mapleader                  =  "," " 定义<leader>键
"let g:maplocalleader ="\\"      " 定义<leader>键
set      nocompatible               " 设置不兼容原始vi模式
filetype plugin                     on " 设置加载对应文件类型的插件
set      noeb                       " 关闭错误的提示
syntax   enable                     " 开启语法高亮功能
syntax   on                         " 自动语法高亮
set      t_Co=256                   " 开启256色支持
set      cmdheight=1                " 设置命令行的高度
set      showcmd                    " select模式下显示选中的行数
set      ruler                      " 总是显示光标位置
set      number                     " 开启行号显示
set      cursorline                 " 高亮显示当前行
set      wrap                       "文本折叠"
set      linebreak                  ""
set      whichwrap+=b,s,<,>,[,],h,l " 设置光标键跨行
set      ttimeoutlen=0              " 设置<ESC>键响应时间
set      virtualedit=block,onemore  " 允许光标出现在最后一个字符的后面
set      clipboard+=unnamedplus     "使vim 与系统共用剪切板"
set      mouse=a                    "使用鼠标
set suffixesadd={.h,.cpp,.py,.m}
set inccommand=nosplit
set hidden

set nrformats=" 00x增减数字时使用十进制

" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
set relativenumber number

augroup linenumber
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
augroup END

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set scrolloff=4
"set nofoldenable         " 禁用折叠代码
set foldcolumn=4 "设置折叠模式"
set foldopen=all "光标遇到折叠就打开"
set foldclose=all "移开折叠时自动关闭"
set foldmethod=syntax
set foldmethod=marker "依标记折叠"
set bsdir=buffer "设定浏览器目录为当前目录"
set autochdir "自动切换到文件当前目录"

set showmatch "显示匹配的括号"
set spell "设置拼写检查
setlocal spell spelllang=en_us,cjk
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set nobackup            " 设置不备份
"set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("persistent_undo")
"" 保存 undo 历史
    "set undodir=$HOME/.undo_history
    set undodir=$HOME/.undodir
    set undofile
    set undolevels=1000
    set undoreload=10000
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 恢复上次文件打开位置
set viminfo='10,\"100,:20,%,n~/.nviminfo
set viminfo+=!
augroup BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf8
set langmenu=zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/dotfiles/nvim/mapping.vim
source ~/dotfiles/nvim/pluglist.vim
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题
set background=dark
let g:onedark_termcolors=256
"colorscheme space_vim_theme
"colorscheme onedark
colorscheme palenight
"colorscheme monokai
hi Normal ctermfg=252 ctermbg=none
source ~/dotfiles/nvim/plugsettings.vim
source ~/dotfiles/nvim/cocplug-settings.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"========================================================================
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"nnoremap <leader>ez :vsplit $MYZSHRC<cr>
autocmd BufWritePost $MYVIMRC source $MYVIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>

"set guifont=JetBrainsMono:h14
let g:python_host_skip_check=1
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_skip_check=1
let g:python3_host_prog = '/usr/bin/python3.8'
"let g:coc_disable_startup_warning=1
"let g:python3_host_prog = '/home/wym/opt/anaconda/bin/python'
"========================================================================

nnoremap <leader>ll :VimtexCompile<cr>
nnoremap <leader>lv :VimtexView<cr>

"let $PAGER=''

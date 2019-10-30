let g:mapleader=","
noremap \ ,
let g:maplocalleader=","


let $BUNDLE = expand("$HOME/.dotfiles/data/vimdata/bundle")

let $PLUG_DIR = expand("$BUNDLE/vim-plug")

if empty(glob(expand("$PLUG_DIR/plug.vim")))
  silent !curl -fLo $PLUG_DIR/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif
source $PLUG_DIR/plug.vim

syntax enable			                                     " 开启语法高亮功能 
let $BUNDLE = expand("$HOME/.dotfiles/data/vimdata/bundle")
let $PLUG_DIR = expand("$BUNDLE/vim-plug")
syntax on			                                         " 允许用指定语法高亮配色方案替换默认方案 
"set termguicolors
set t_Co=256
let g:molokai_original = 1 
set background=light  "colorscheme default  
colorscheme monokai 

"colorscheme solarized		" vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下 
"colorscheme so  herald fisa jhlight Dark2 blue     ron   my2 
"let g:solarized_termcolors=256                                                                                                               
"let g:solarized_termtrans=1                                                                                                                  
"let g:solarized_contrast="normal"                                                                                                            
"let g:solarized_visibility="normal" 

""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'"""""""""""'"' 
filetype off
set rtp+=~/.vim/plugged/
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
"Plug 'xuhdev/vim-latex-live-preview'
Plug 'scrooloose/nerdcommenter'             "快速开关注释
Plug 'SirVer/ultisnips'                     "模板补全
Plug 'Valloric/YouCompleteMe'                "智能补全
Plug 'honza/vim-snippets'                     "模板补全
Plug 'Lokaltog/vim-easymotion'               "快速移动
Plug 'sjl/gundo.vim'                       "支持分支撤销
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'                       "基于标签的标识符列表
Plug 'kshenoy/vim-signature'                   "书签可视化
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-expand-region'
Plug 'junegunn/vim-easy-align'
Plug 'gregsexton/gitv'
Plug 'liuchengxu/vim-which-key'
Plug 'wsdjeg/ChineseLinter.vim'
Plug 'yianwillis/vimcdoc'
Plug 'paroxayte/vwm.vim'        "窗口管理插件"
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/LeaderF',{'do':'./install.sh'}
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
"Plug 'fholgado/minibufexpl.vim'
Plug 'junegunn/seoul256.vim'
call plug#end()

nnoremap <silent> <leader>pi :PlugInstall<cr>
nnoremap <silent> <leader>pu :PlugUpdate<cr>
nnoremap <silent> <leader>pc :PlugClean<cr>
nnoremap <silent> <leader>pd :PlugDiff<cr>
"========================================================================

"========================================================================
filetype plugin indent on " load filetype plugins/indent settings
syntax on
"========================================================================
"========================================================================

set nu
set linespace=6
set syntax=on
set virtualedit=all
set nowrapscan
set modifiable
set confirm
"set cindent
"set autoindent
set showcmd
set shortmess=atI
set nocompatible
set helplang=cn
set timeoutlen=500
set ttimeoutlen=0
set incsearch
set ignorecase smartcase
set wildmenu
set gcr=a:block-blinkon0
set cursorline
set cursorcolumn
set hlsearch
set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smarttab
set history=1000
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set langmenu=zh_CN.UTF-8
set ruler
set viminfo+=!
set iskeyword+=_,$,@,%,#,-  
set linespace=0  
set wildmenu  
set backspace=2  
set whichwrap+=<,>,h,l  
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key 
set matchtime=5  
set report=0  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
set showmatch  
set scrolloff=8  
"set autoindent  
set clipboard+=unnamed
set autoread
set autowrite
"set complete=k,.
" minibufexpl插件的一般设置  
let g:miniBufExplMapWindowNavVim = 1  
let g:miniBufExplMapWindowNavArrows = 1  
let g:miniBufExplMapCTabSwitchBufs = 1  
let g:miniBufExplModSelTarget = 1    
""""""""""""""""""""""""""""""""""""""""键盘命令与映射"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 定义快捷键到行首
nnoremap fh  0			

" 定义快捷键到行尾
nnoremap fl  $			
             
"nnoremap dk  <c-u>

"nnoremap dj  <c-d>

nnoremap j gj
nnoremap k gk

nnoremap i zzi

nnoremap o zzo

nnoremap O zzO

inoremap <enter> <esc>zza<enter>

" 设置快捷键将选中文本块复制至系统剪贴板
" 设置快捷键将选中文本
vnoremap <leader>y "+y	


" 设置快捷键将系统剪贴板内容粘贴至vim
nnoremap <leader>p "+p		

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>			

" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
nmap <Leader>wq :wq<CR>

" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>		

" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>	

nmap <Leader><space> i< space><Esc>

nnoremap <leader><cr> o<esc>



inoremap jk <Esc>
cnoremap jk <Esc>
vnoremap jk <Esc>

inoremap jj <Esc>la
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
nnoremap <Leader>; :s/\n//g<CR>

imap <C-h> <left>

imap <c-j> <down>

imap <C-k> <up>

imap <C-l> <right>

" 映射全选+复制 ctrl+a
"map <C-A>   ggVGY	

"map! <C-A> <Esc>ggVGY

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y			

nnoremap nw <C-W><C-W>			" 依次遍历

nnoremap <Leader>wl <C-W>l		" 跳转至右方的窗口

nnoremap <Leader>wh <C-W>h		" 跳转至方的窗口

nnoremap <Leader>wk <C-W>k		"跳转至上方的子窗口

nnoremap <Leader>wj <C-W>j		" 跳转至下方的子窗口

nnoremap <Leader>wc <C-W>c		"关闭当前窗口 

nnoremap <Leader>wo <C-W>o		"关闭当前窗口以外的窗口

nnoremap <Leader>wr <C-W>R		"将当前窗口向前滚动一个位置
nnoremap <Leader>w+ <C-W>+		"增加当前窗口高度(默认是一行)
nnoremap <Leader>= :res +40<CR>		"增加当前窗口高度40行
nnoremap <Leader>- :res -40<CR>		"增加当前窗口高度40行
nnoremap <Leader>w- <C-W>-		"减小当前窗口高度(默认是一行)
nnoremap <Leader>w> <C-W>>		"增加当前窗口宽度(默认是一列)
nnoremap <Leader>w< <C-W><		"减小当前窗口宽度(默认是一列)
nnoremap <Leader>w= <C-W>=		"使所有窗口高宽/度度相等

nnoremap<Leader>sj  :bot copen<CR>

nnoremap<Leader>sk  :cclose<CR>

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)








"========================================================================
"if isdirectory( $USRPLUGD . 'vimtex' )
  "let g:tex_flavor = "latex"
  "let g:vimtex_quickfix_open_on_warning = 0
  "let g:vimtex_quickfix_mode = 2
  "let g:vimtex_view_general_viewer='sumatrapdf'
  "let g:vimtex_compiler_latexrun_engines = {
        "\ '-' : 'xelatex'
        "\}
  "let g:vimtex_view_general_options_latexmk = '-reuse-instance'
  "let g:vimtex_view_general_options
        "\ = '-reuse-instance -forward-search @tex @line @pdf'
        "\ . ' -inverse-search "gvim --servername ' . v:servername
        "\ . ' --remote-send \"^<C-\^>^<C-n^>'
        "\ . ':drop \%f^<CR^>:\%l^<CR^>:normal\! zzzv^<CR^>'
        "\ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
        "\ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
        "\ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
"endif
"let g:tex_flavor                     = 'latex'
let g:vimtex_imaps_leader=';'
let g:vimtex_compiler_method='latexmk'
"let g:vimtex_compiler_latexmk_engines='xelatex'.'-src-specials -synctex=1 -interaction=nonstopmode $*'   
let g:vimtex_view_method = 'zathura'
"let g:vimtex_enabled = 1
"let g:vimtex_complete_img_use_tail = 1
"let g:llvepreview_engine='pdflatex'
let g:llvepreview_engine='xelatex'.'-src-specials -synctex=1 -interaction=nonstopmode $*'   
"let g:llvepreview_engine='xelatex'
"let g:llvepreview_cursorhold_recompile=0
"let g:tex_flavor='latex'
"let g:tex_flavor='xelatex'
""let g:tex_indent_items= 0
"""let g:Tex_DefaultTargetFormat='pdf'                                                    
"""let g:Tex_CompileRule_pdf='xelatex -src-specials -synctex=1 -interaction=nonstopmode $*'   
"""let g:Tex_FormatDependency_pdf='pdf'
"let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'

"autocmd Filetype tex setl updatetime=1  "tex即时预览
"let g:livepreview_previewer = 'evince'
"let g:livepreview_previewer = 'zathura'

"setlocal spell
"set spelllang=en_us
"inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
"========================================================================

"========================================================================

"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap <leader>je <Plug>(ale_previous_wrap)
nmap <leader>ke <Plug>(ale_next_wrap
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
vnoremap <leader>y "+y	
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
"========================================================================

"========================================================================

 "UltiSnips 的 tab 键与 YCM 冲突，重新设定

"let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'

let g:UltiSnipsExpandTrigger="<leader><tab>"
"let g:UltiSnipsExpandTrigger="'"

let g:UltiSnipsJumpForwardTrigger="<leader><tab>"

let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

let g:ycm_server_python_interpreter='/usr/bin/python3'

let g:ycm_global_ycm_extra_conf ='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

""" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1


let g:SuperTabRetainCompletionType=2
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" YCM 补全菜单配色
" YCM
let g:ycm_confirm_extra_conf = 0 
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '✹'
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
nnoremap <leader>u :YcmCompleter GoToDeclaration<cr>
" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
set sessionoptions+="sesdir"
autocmd VimLeave * mks! my.vim    "这里可以加入你自己默认保存的文件名
" 保存 undo 历史
set undodir=~/.undo_history/
set undofile
" 保存快捷键
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

"更高效的移动 ========================================================================

let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
       "" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

"========================================================================


"""""""" 自定义 vim-signature 快捷键""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
     " 正向遍历同名标签
nnoremap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nnoremap <Leader>tp :tprevious<CR>

nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
     " 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 

let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>ot :TagbarToggle<CR> 
let g:tagbar_autofocus =1 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

"
"========================================================================
 nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>


"========================================================================symotion-prefix)
"========================================================================
let g:which_key_map =  {}
nnoremap <silent><leader> :WhichKey','<CR>

" `name` 是一个特殊字段，如果 dict 里面的元素也是一个 dict，那么表明一个 group，比如 `+file`, 就会高亮和显示 `+file` 。默认是 `+prefix`.

" =======================================================
" 基于已经存在的快捷键映射，直接使用一个字符串说明介绍信息即可
" =======================================================
" You can pass a descriptive text to an existing mapping.
let g:which_key_map.f = { 'name' : '+file' }

nnoremap <silent> <leader>fs :update<CR>
let g:which_key_map.f.s = 'save-file'

nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
let g:which_key_map.f.d = 'open-vimrc'

nnoremap <silent> <leader>oq  :copen<CR>
nnoremap <silent> <leader>ol  :lopen<CR>
let g:which_key_map.o = {
      \ 'name' : '+open',
      \ 'q' : 'open-quickfix'    ,
      \ 'l' : 'open-locationlist',
      \ }

" =======================================================
" 不存在相关的快捷键映射，需要用一个 list：
" 第一个元素表明执行的操作，第二个是该操作的介绍
" =======================================================
" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.) and descriptions for existing mappings
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }

let g:which_key_map.l = {
      \ 'name' : '+lsp'                                            ,
      \ 'f' : ['LanguageClient#textDocument_formatting()'     , 'formatting']       ,
      \ 'h' : ['LanguageClient#textDocument_hover()'          , 'hover']            ,
      \ 'r' : ['LanguageClient#textDocument_references()'     , 'references']       ,
      \ 'R' : ['LanguageClient#textDocument_rename()'         , 'rename']           ,
      \ 's' : ['LanguageClient#textDocument_documentSymbol()' , 'document-symbol']  ,
      \ 'S' : ['LanguageClient#workspace_symbol()'            , 'workspace-symbol'] ,
      \ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['LanguageClient#textDocument_definition()'     , 'definition']       ,
        \ 't' : ['LanguageClient#textDocument_typeDefinition()' , 'type-definition']  ,
        \ 'i' : ['LanguageClient#textDocument_implementation()'  , 'implementation']  ,
        \ },
      \ }
"========================================================================
"========================================================================
"
""" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>ln :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

"========================================================================
"" Example of regrouping command windows

"" Vista attempts to move itself, the sleep prevents a race.
"let s:dev_panel = {
      "\  'name': 'dev_panel',
      "\  'opnAftr': ['edit'],
      "\  'right':
      "\  {
      "\    'v_sz': 33,
      "\    'init': ['NERDTree'],
      "\    'bot':
      "\    {
      "\      'init': ['Vista', 'sleep 50ms']
      "\    }
      "\  }
      "\}

"let g:vwm#layouts += [s:dev_panel]
""========================================================================

"========================================================================
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"nnoremap <leader>ez :vsplit $MYZSHRC<cr>
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"========================================================================
set showcmd

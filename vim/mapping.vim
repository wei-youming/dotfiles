" 定义快捷键到行首
"nnoremap fh  0			

" 定义快捷键到行尾
"nnoremap fl  $			
             
"nnoremap dk  <c-u>

"nnoremap dj  <c-d>

"nnoremap j gj
"nnoremap k gk
"noremap h <NOP>
"noremap j <NOP>
"noremap k <NOP>
"noremap l <NOP>
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
nmap <Leader>ww :w<CR>
nmap <Leader>wq :wq<CR>

" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>		

" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>	

nmap <Leader><space> i< space><Esc>

nnoremap <leader><cr> o<esc>



inoremap jk <Esc>
"cnoremap jk <Esc>
"vnoremap jk <Esc>

inoremap jj <Esc>la
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
nnoremap <Leader>; :s/\n//g<CR>

imap <C-h> <left>

imap <c-j> <down>

imap <C-k> <up>

imap <C-l> <right>

" 映射全选+复制 ctrl+a
map <C-A>   ggVGY	

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

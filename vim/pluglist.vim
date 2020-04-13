""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'""""""""""""'"'"""""""""""'"' 

let $PLUG_DIR = expand("$HOME/.vim/autoload/")

if empty(glob(expand("$PLUG_DIR/plug.vim")))
  silent !curl -fLo $PLUG_DIR/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif
"source $PLUG_DIR/plug.vim

filetype off
set rtp+=~/.vim/plugged/
call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""
Plug 'flazz/vim-colorschemes'
Plug 'chxuan/change-colorscheme'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/seoul256.vim'
Plug 'liuchengxu/space-vim-theme'
Plug 'liuchengxu/vista.vim'
""""""""""""""""""""""""""""""
"Plug 'liuchengxu/vim-which-key'
""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
""""""""""""""""""""""""""""""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'scrooloose/nerdcommenter'             "快速开关注释
"Plug 'SirVer/ultisnips'                     "模板补全
"Plug 'Valloric/YouCompleteMe'                "智能补全
Plug 'honza/vim-snippets'                     "模板补全
""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'               "快速移动
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'terryma/vim-multiple-cursors'
""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
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
Plug 'wsdjeg/ChineseLinter.vim'
Plug 'yianwillis/vimcdoc'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ryanoasis/vim-devicons'

Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/LeaderF',{'do':'./install.sh'}
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
"Plug 'fholgado/minibufexpl.vim'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'iamcco/markdown-preview.nvim',{ 'do':{ -> mkdp#util#install() } }
"Plug 'suan/vim-instant-markdown',{'for':'markdown'}
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
Plug 'andymass/vim-matchup'
call plug#end()

filetype plugin indent on " load filetype plugins/indent settings
syntax on

nnoremap <silent> <leader>pi :PlugInstall<cr>
nnoremap <silent> <leader>pu :PlugUpdate<cr>
nnoremap <silent> <leader>pc :PlugClean<cr>
nnoremap <silent> <leader>pd :PlugDiff<cr>

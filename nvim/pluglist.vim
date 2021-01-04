" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
set rtp+=~/.fzf

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('haya14busa/dein-command.vim')
  "call dein#add('Shougo/deoplete.nvim')
  "let g:deoplete#enable_at_startup = 1
  call dein#add('ncm2/ncm2-path')

  call dein#add('Shougo/defx.nvim')
  call dein#add('kristijanhusak/defx-icons')
  call dein#add('kristijanhusak/defx-git')
  call dein#add('farmergreg/vim-lastplace')
  call dein#add('ryanoasis/vim-devicons')
  "call dein#add('sakhnik/nvim-gdb', { 'build': ':!./install.sh \| UpdateRemotePlugins' })
  "call dein#add('kevinhwang91/rnvimr',{'build':'make sync'})

  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

  call dein#add('hiberabyss/NeovimGdb')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  "call dein#add('neoclide/mycomment.vim')             "快速开关注释
  "call dein#add( 'scrooloose/nerdcommenter')             "快速开关注释
  call dein#add('preservim/nerdcommenter')             "快速开关注释
  call dein#add('sbdchd/neoformat')
  "call dein#add('sheerun/vim-polyglot')
  call dein#add('neomake/neomake')
  call dein#add('morhetz/gruvbox')
  call dein#add('lervag/vimtex')
  "call dein#add('xuhdev/vim-latex-live-preview')
  "call dein#add('glacambre/firenvim', { 'hook_post_update': function('firenvim#install') })
  "

  call dein#add('kana/vim-textobj-user')
  call dein#add('kana/vim-textobj-indent')
  call dein#add('kana/vim-textobj-function')
  "call dein#add('rbonvall/vim-textobj-latex')
  call dein#add('glts/vim-textobj-comment')


  call dein#add('liuchengxu/vista.vim')
  call dein#add('itchyny/lightline.vim')
  "call dein#add('Yggdroot/LeaderF',{'build':'./install.bat'})
  "call dein#add('liuchengxu/vim-clap')
  "call dein#add('junegunn/fzf',{'build':'cd ~/.fzf','./install -all'})
  call dein#add('tweekmonster/startuptime.vim')


  call dein#add('andymass/vim-matchup')
  call dein#add('justinmk/vim-sneak')
  let g:sneak#label = 1
  call dein#add('junegunn/vim-easy-align')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('easymotion/vim-easymotion')

  call dein#add('honza/vim-snippets')

  call dein#add('w0rp/ale')
  call dein#add( 'kshenoy/vim-signature')                   "书签可视化
  call dein#add('iamcco/markdown-preview.nvim', { 'build': 'cd app & yarn install'  })
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('sheerun/vim-polyglot')
  "call dein#add('ludovicchabant/vim-gutentags')

  call dein#add ('mbbill/undotree')                       "支持分支撤销
  call dein#add ('kien/rainbow_parentheses.vim')                       "支持分支撤销
  """"""""""""""""""""""""""""""
  call dein#add('rakr/vim-one')
  call dein#add('joshdick/onedark.vim')
  call dein#add('noahfrederick/vim-hemisu')
  call dein#add( 'kristijanhusak/vim-hybrid-material')
  "call dein#add('chxuan/change-colorscheme')
  call dein#add('lifepillar/vim-solarized8')
  call dein#add('liuchengxu/space-vim-theme')
  call dein#add('rafi/awesome-vim-colorschemes')
  call dein#add('rainglow/vim')
  call dein#add('AlexMax/.vim')
  call dein#add('drewtempelmeyer/palenight.vim')
  call dein#add('connorholyday/vim-snazzy')
  call dein#add('mhinz/vim-startify')
  call dein#add('terryma/vim-expand-region')
  call dein#add('rhysd/vim-clang-format')


call dein#end()
call dein#save_state()
endif


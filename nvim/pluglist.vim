" Add the dein installation directory into runtimepath
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim
set rtp+=~/.fzf

if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
  "call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('haya14busa/dein-command.vim')
  "call dein#add('Shougo/deoplete.nvim')
  "let g:deoplete#enable_at_startup = 1
  call dein#add('ncm2/ncm2-path')

  call dein#add('Shougo/defx.nvim')
  call dein#add('kristijanhusak/defx-icons')
  call dein#add('kristijanhusak/defx-git')
  call dein#add('farmergreg/vim-lastplace')
  call dein#add('ryanoasis/vim-devicons')

  call dein#add('neoclide/coc.nvim',{'rev': 'release'})

  call dein#add('hiberabyss/NeovimGdb')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  "call dein#add('neoclide/mycomment.vim')             "快速开关注释
  call dein#add( 'scrooloose/nerdcommenter')             "快速开关注释
  call dein#add('sbdchd/neoformat')
  call dein#add('sheerun/vim-polyglot')
  "call dein#add('neomake/neomake')
  call dein#add('morhetz/gruvbox')
  call dein#add('lervag/vimtex')
  call dein#add('xuhdev/vim-latex-live-preview')
  call dein#add('glacambre/firenvim', { 'hook_post_update': function('firenvim#install') })

  call dein#add('liuchengxu/vista.vim')
  call dein#add('liuchengxu/vim-clap')
  "call dein#add('junegunn/fzf',{'build': 'cd ~/.fzf','./install -all'})
  call dein#add('tweekmonster/startuptime.vim')


  call dein#add('andymass/vim-matchup')
  call dein#add('justinmk/vim-sneak')
  let g:sneak#label = 1
  call dein#add('junegunn/vim-easy-align')
  call dein#add('haya14busa/incsearch.vim')

  call dein#add('honza/vim-snippets')

  call dein#add('w0rp/ale')
  call dein#add( 'kshenoy/vim-signature')                   "书签可视化
  call dein#add('iamcco/markdown-preview.nvim', { 'build': 'cd app & yarn install'  })
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('sheerun/vim-polyglot')
  "call dein#add('ludovicchabant/vim-gutentags')

  """"""""""""""""""""""""""""""
  call dein#add('rakr/vim-one')
  call dein#add('joshdick/onedark.vim')
  call dein#add('noahfrederick/vim-hemisu')
  call dein#add( 'kristijanhusak/vim-hybrid-material')
  "call dein#add('chxuan/change-colorscheme')
  call dein#add('liuchengxu/space-vim-theme')
  call dein#add('drewtempelmeyer/palenight.vim')
  call dein#add('connorholyday/vim-snazzy')
  call dein#add('mhinz/vim-startify')


call dein#end()
call dein#save_state()
endif


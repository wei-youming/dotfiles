#/bin/zsh
mv ~/.config/bspwm/bspwmrc{,.bak}
mv ~/.config/sxhkd/sxhkdrc{,.bak}
mv ~/.config/nvim/init.vim{,.bak}
ln -sb ~/dotfiles/bspwm/bspwmrc ~/.config/bspwm/
ln -sb ~/dotfiles/sxhkd/sxhkdrc  ~/.config/sxhkd/
ln -sb ~/dotfiles/vim/basic.vim ~/.config/nvim/init.vim
ln -sb ~/dotfiles/zsh/zshrc ~/.zshrc



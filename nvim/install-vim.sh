#/bin/zsh
#mv ~/.config/bspwm/bspwmrc{,.bak}
#mv ~/.config/sxhkd/sxhkdrc{,.bak}
mv ~/.config/nvim/init.vim{,.bak}
#ln -sb ~/dotfiles/bspwm/bspwmrc ~/.config/bspwm/
#ln -sb ~/dotfiles/sxhkd/sxhkdrc  ~/.config/sxhkd/
ln -sb ~/dotfiles/nvim/basic.vim ~/.config/nvim/init.vim
#ln -sb ~/dotfiles/zsh/zshrc ~/.zshrc
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.local/share/dein





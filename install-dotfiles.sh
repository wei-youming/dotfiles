#/bin/bash
CONFIG_DIR=~/.config
for dir in bspwm sxhkd ranger polybar nvim ; do
    if [ -d $CONFIG_DIR/$dir ];then
        mv $CONFIG_DIR/$dir{,.bak}
    fi
    ln -sb ~/dotfiles/$dir $CONFIG_DIR/$dir
done

if [ -f  ~/.zshrc ]
then
    mv ~/.zshrc{,.bak}
fi
ln -sb ~/dotfiles/zsh/zshrc ~/.zshrc

if [ -f  ~/.alias.sh ]
then
    mv ~/.alias{,.bak}
fi
ln -sb ~/dotfiles/zsh/alias.sh  ~/.myalias.sh

sh ~/dotfiles/nvim/install-vim.sh



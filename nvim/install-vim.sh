#!/bin/sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

$CONFIG_DIR=~/.config
if [-d $CONFIG_DIR/bspwm ]
then
  mv $CONFIG_DIR/bspwm/bspwmrc{,.bak}
else
  mkdir $CONFIG_DIR/bspwm
fi

if [-d $CONFIG_DIR/sxhkd ]
then
  mv $CONFIG_DIR/sxhkd/bspwmrc{,.bak}
else
  mkdir $CONFIG_DIR/sxhkd
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# !/usr/bin/zsh
source ~/.zinit/bin/zinit.zsh

# 快速目录跳转
zinit ice lucid wait='1'
zinit light skywind3000/z.lua

# 语法高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting

# 自动建议
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# 补全
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions

# 加载 OMZ 框架及部分插件
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
zinit load zdharma/history-search-multi-word
zinit ice from"gh-r" as"command"
zinit load junegunn/fzf-bin

zinit snippet OMZP::extract

zinit ice lucid wait='1'
zinit snippet OMZ::plugins/git/git.plugin.zsh

# 加载 pure 主题
zinit ice depth=1; 
zinit light romkatv/powerlevel10k
#zinit ice pick"async.zsh" src"pure.zsh"
#zinit light sindresorhus/puret
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
zinit snippet OMZ::lib/clipboard.zsh
zinit ice lucid wait="0" atload="zpcompinit; zpcdreplay"
zinit snippet OMZ::lib/git.zsh


zinit light Aloxaf/fzf-tab

# 加载它们的补全等
zinit ice mv="*.zsh -> _fzf" as="completion"
zinit snippet 'https://github.com/junegunn/fzf/blob/master/shell/completion.zsh'
zinit snippet 'https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh'
zinit ice as="completion"
zinit snippet 'https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/fd/_fd'
zinit ice mv="*.zsh -> _exa" as="completion"
zinit snippet 'https://github.com/ogham/exa/blob/master/contrib/completions.zsh'

# 不需要花里胡哨的 ls，我们有更花里胡哨的 exa
DISABLE_LS_COLORS=true
alias ls=exa
# 配置 fzf 使用 fd
export FZF_DEFAULT_COMMAND='fd --type f'
# ---- 加载完了 ----


if [[ "$TERM" == "screen" ]]; then
    export TERM=screen-256color
fi
source ~/.myalias.sh
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS
export HISTFILE=~/.zhistory
#以附加的方式写入历史纪录
setopt INC_APPEND_HISTORY
#如果连续输入的命令相同，历史纪录中只保留一个
setopt HIST_IGNORE_DUPS
#为历史纪录中的命令添加时间戳
setopt EXTENDED_HISTORY
#启用 cd 命令的历史纪录，cd -[TAB]进入历史路径
setopt AUTO_PUSHD
#相同的历史路径只保留一个
setopt PUSHD_IGNORE_DUPS

##自动补全功能 {{{
#setopt AUTO_LIST
#setopt AUTO_MENU
##开启此选项，补全时会直接选中菜单项
##setopt MENU_COMPLETE

#autoload -U compinit
#compinit

##自动补全缓存
#zstyle ':completion::complete:*' use-cache on
#zstyle ':completion::complete:*' cache-path .zcache
#zstyle ':completion:*:cd:*' ignore-parents parent pwd

##自动补全选项
#zstyle ':completion:*' verbose yes
#zstyle ':completion:*' menu select
#zstyle ':completion:*:*:default' force-list always
#zstyle ':completion:*' select-prompt '%SSelect: lines: %L matches: %M [%p]'

#zstyle ':completion:*:match:*' original only
#zstyle ':completion::prefix-1:*' completer _complete
#zstyle ':completion:predict:*' completer _complete
#zstyle ':completion:incremental:*' completer _complete _correct
#zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate

##路径补全
#zstyle ':completion:*' expand 'yes'
#zstyle ':completion:*' squeeze-slashes 'yes'
#zstyle ':completion::complete:*' '\\'

##彩色补全菜单
#eval $(dircolors -b)
#export ZLSCOLORS="${LS_COLORS}"
#zmodload zsh/complist
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

##eval "$(lua /path/to/z.lua --init bash enhanced once echo)"    # BASH 初始化
##eval "$(lua /path/to/z.lua --init zsh enhanced once echo)"     # ZSH 初始化
##eval "$(lua /path/to/z.lua --init posix enhanced once echo)"   # 其他 Posix Shell 初始化

##修正大小写
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
##错误校正
#zstyle ':completion:*' completer _complete _match _approximate
#zstyle ':completion:*:match:*' original only
#zstyle ':completion:*:approximate:*' max-errors 1 numeric

##kill 命令补全
#compdef pkill=killall
#zstyle ':completion:*:*:kill:*' menu yes select
#zstyle ':completion:*:*:*:*:processes' force-list always
#zstyle ':completion:*:processes' command 'ps -au$USER'

##补全类型提示分组
#zstyle ':completion:*:matches' group 'yes'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*:options' description 'yes'
#zstyle ':completion:*:options' auto-description '%d'
#zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
#zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
#zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
#zstyle ':completion:*:corrections' format $'\e[01;32m -- %d (errors: %e) --\e[0m'

## cd ~ 补全顺序
#zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
##}}}
#扩展路径
#/v/c/p/p => /var/cache/pacman/pkg
setopt complete_in_word


##行编辑高亮模式 {{{
# Ctrl+@ 设置标记，标记和光标点之间为 region
zle_highlight=(region:bg=magenta #选中区域
special:bold #特殊字符
isearch:underline)#搜索时使用的关键字
#}}}

##空行(光标在行首)补全 "cd " {{{
user-complete(){
case $BUFFER in
"" ) # 空行填入 "cd "
BUFFER="cd "
zle end-of-line
zle expand-or-complete
;;
"cd " ) # TAB + 空格 替换为 "cd ~"
BUFFER="cd ~"
zle end-of-line
zle expand-or-complete
;;
" " )
BUFFER="!?"
zle end-of-line
;;
"cd --" ) # "cd --" 替换为 "cd +"
BUFFER="cd +"
zle end-of-line
zle expand-or-complete
;;
"cd +-" ) # "cd +-" 替换为 "cd -"
BUFFER="cd -"
zle end-of-line
zle expand-or-complete
;;
* )
zle expand-or-complete
;;
esac
}
zle -N user-complete
bindkey "\t" user-complete

#显示 path-directories ，避免候选项唯一时直接选中
cdpath="/home"
#}}}

##在命令前插入 sudo {{{
#定义功能
sudo-command-line() {
[[ -z $BUFFER ]] && zle up-history
[[ $BUFFER != sudo\ * ]] && BUFFER="sudo $BUFFER"
zle end-of-line #光标移动到行末
}
zle -N sudo-command-line
#定义快捷键为： [Esc] [Esc]
bindkey "\e\e" sudo-command-line
#}}}

# fix zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'
#bindkey -v

export PATH="$PATH:/usr/bin/local/bin"
export PATH="$PATH:/usr/lib/FinalShell/bin"
export PATH="$PATH:/usr/local/luarocks/bin"
export PATH="$PATH:/home/wym/opt/eclipse/cpp/eclipse"
export PATH="$PATH:/home/wym/.local/share/matlab"
export PATH="$PATH:/home/osily/program/bin"
export PATH="$PATH:/opt/baidunetdisk/"
export PATH="$PATH:/opt/polybar/"
export PATH="$PATH:/usr/share"
export PATH="$PATH:/usr/local/MATLAB/R2018a/bin"
export PATH="$PATH:/opt/intel/bin"
export PATH="$PATH:/opt/intel/compilers_and_libraries_2019.5.281/linux/compiler/include"
export PATH="$PATH:$HOME/.dynamic-colors/bin"
export PATH="$PATH:/home/wym/opt/anaconda/bin"
export PATH="$PATH:/home/wym/opt/ranger/"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/compilers_and_libraries_2019.5.281/linux/mkl/lib/intel64_lin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/compilers_and_libraries_2019.5.281/linux/compiler/lib/intel64_lin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/compilers_and_libraries_2019.5.281/linux/compiler/lib/intel64_lin
export NVIM_PYTHON_LOG_FILE=/tmp/log
export NVIM_PYTHON_LOG_LEVEL=DEBUG
export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
export LC_CTYPE=zh_CN.UTF-8
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"
export _JAVA_AWT_WM_NONREPARENTING=1
export J2D_D3D=false
export DISPLAY=:0
export CPLUS_INCLUDE_PATH=/opt/intel/mkl/include:$CPLUS_INCLUDE_PATH
export EDIT=neovim
export SELECTED_EDIT="/usr/bin/neovim"
export LANG=en_US.UTF-8
export FZF_DEFAULT_OPTS='--bind ctrl-j:down,ctrl-k:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git . ~/.config /home / '
export FZF_COMPLETION_TRIGGER='\'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary fil
### End of Zinit's installer chunk

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#eval `dircolors ~/.dir_colors`

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

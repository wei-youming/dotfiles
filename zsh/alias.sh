alias upg="sudo apt-get update && sudo apt-get upgrade"
alias qq="nohup google-chrome --no-proxy-server --app=http://web.qq.com >/dev/null 2>/dev/null &"
#alias tomstart="sudo ~/program/tomcat620/bin/startup.sh"
#alias tomshut="sudo ~/program/tomcat620/bin/shutdown.sh"
#alias js2="rhino"
alias gmusic="google-chrome --no-proxy-server --app=http://g.top100.cn/12174704/html/player.html#loaded"
alias apa="dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P"
alias mrun="matlab -nodesktop -nosplash -logfile `date +%Y_%m_%d-%H_%M_%S`.log "
alias cl='clear'
#alias cat='ccat'
alias rm='trash'
alias rl='trash-list'
alias chrome='google-chrome-stable'


#命令别名 {{{

alias -g ls='ls -F --color=auto'
alias -g ll='ls -l'
alias -g la='ls -la'
alias -g vi='nvim'
#alias -g nv='nvim'
alias -g l='ls'
alias -g grep='grep --color=auto'
#alias -g history='history -fi'
alias -g ai='sudo apt-get install'
alias -g aar='sudo apt-get autoremove'
alias -g aac='sudo apt-get autoclean'
alias -g ap='sudo apt-get purge'
alias -g aud='sudo apt-get update'
alias -g aug='sudo apt-get upgrade'
alias -g adu='sudo apt-get dist-upgrade'
alias mc='make clean'
alias sd='stardict'
alias yd='ydict'
alias zi='z -i'
alias zb='z -b'
alias zc='z -c'
alias -s pdf=zathura
alias -s vim=nvim
alias ra='ranger'

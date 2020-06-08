
# ZSH
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"

# Exa 
alias ls="exa --across"
alias la="exa -lah"
alias ll="exa -lh"
alias l="exa -lah"
alias lt="exa -Th"
alias lg="exa -lh --git"

# dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


# i3
alias lock='/usr/bin/betterlockscreen -l'
alias sound='alsamixer'
alias i3config='vim ~/.config/i3/config'
alias polyconfig='vim ~/.config/polybar/config'
alias i3alias='ack --pager=less ^bindsym ~/.config/i3/config'

# Docker
alias dk='docker'
alias dkc='docker container'
alias dkls='docker container ls'
alias dkl='docker container logs'
alias dks='docker service'
alias dki='docker image'
alias dm='docker-machine'
alias dkco='docker-compose'
alias startdocker='systemctl start docker'
alias dkstart='systemctl start docker'
alias dkcstop='docker stop $(docker ps -a -q)'
alias dkrmall='docker rm $(docker ps -aq)'

#
alias vim='nvim'
alias xclipsel='xclip -selection "clipboard"'
alias bwsession='read session; export BW_SESSION="$session"'
alias screencast='~/.config/scripts/screen-cast.sh'
alias zat='zathura'
alias imgm='imagemagick'
alias img='sxiv'
alias mutt='neomutt'
alias cp='/usr/local/bin/cpg -g'
alias mv='/usr/local/bin/mvg -g'
alias du='du -a -h --max-depth=1 | sort -n'
alias al='la'
alias bc='bc -l'
alias geoip='curl ipinfo.io | jq'
alias ytdl='youtube-dl'
alias ggrive='wd grive && grive -P && cd - && notify-send -a grive -i google-drive "Sync Status:" "completed\!"'
alias nnn='nnn -dora'
alias deu='dict -d fd-deu-eng'
alias eng='dict -d fd-eng-deu'
alias rg='rg -S'
alias taskls='task ls due:today'
alias cal='cal -m'
alias define='ddgr -n 2 define'
alias pvpn='protonvpn'
alias sudo='sudo '
alias vimdiff='nvim -d'
#alias kubectl='microk8s.kubectl'
alias df='df -TH -x overlay -x tmpfs -x squashfs'


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

# Calendar
alias cal='gcalcli'
alias calw='gcalcli calw'
alias cala='gcalcli agenda'
alias calg='gcalcli --calendar="Gemeinsamer Kalender"'
alias calp='gcalcli --calendar=sebastian.boerakker@gmail.com'
alias calm='gcalcli --calendar=Michelle'

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
alias geoip='curl ipinfo.io'
alias ytdl='youtube-dl'
alias ggrive='wd grive && grive && cd -'
alias nnn='nnn -do'
alias deu='dict -d fd-deu-eng'
alias eng='dict -d fd-eng-deu'
alias todo='todoist'
alias todols='todoist list -f "(overdue | today)"'

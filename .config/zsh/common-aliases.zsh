
# ZSH
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"


# Pywal
alias wal-wood="wal -q -n -a "92" -i ~/Pictures/Wallpapers/wood.jpg"
alias wal-sunset="wal -q -n -a "92" -i ~/Pictures/Wallpapers/sunset.jpg"
alias wal-yosemite="wal -n -a "92" -i ~/Pictures/Wallpapers/MacOS/Yosemite-wallpaper-02-ShockBlast.jpg"

# Exa 
alias ls="exa --across"
alias la="exa -lah"
alias ll="exa -l"
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
alias dm='docker-machine'
alias dkco='docker-compose'
alias startdocker='systemctl start docker'
alias dkstart='systemctl start docker'
alias dkcstop='docker stop $(docker ps -a -q)'

#
alias vim='nvim'
alias gnucash='LANGUAGE=de_DE.UTF-8 LANG=de_DE.UTF-8 LC_ALL=de_DE.UTF-8 gnucash'
alias gnome-ctl='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
alias firefox='GTK_THEME="Adwaita" /usr/bin/firefox'

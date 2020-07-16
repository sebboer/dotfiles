# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira-custom"

#########################################################################
#  PLUGINS
#########################################################################
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	zsh-syntax-highlighting
  aws
  cargo
  copydir
  copyfile
  calc
	kubectl
  docker
  docker-machine
  docker-compose
  fzf
	fzf-tab
  git
  gitignore
  colored-man-pages
  jsontools
  npm
  nvm
  node
  nmap
  ng
  pip
  rust
	rustup
  vi-mode-custom
  sudo
  wd
)

# The next line enables shell command completion for gcloud.
#if [ -f '/home/basti/.google-cloud-sdk/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/basti/.google-cloud-sdk/google-cloud-sdk/completion.zsh.inc'; fi

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# ======================================================================
# Config Files
# ======================================================================
source $ZSH/oh-my-zsh.sh
source $HOME/.config/zsh/variables.zsh
source $HOME/.config/zsh/common-aliases.zsh
source $HOME/.config/zsh/path.zsh
source $HOME/.config/zsh/common-functions.zsh
#source $HOME/.config/zsh/secret-variables.zsh

# ======================================================================
# FZF
# ======================================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
enable-fzf-tab

# ======================================================================
# VI MODE
# ======================================================================
# function in >> ~/.config/zsh/common-functions.zsh
zle -N zle-line-init
zle -N zle-keymap-select


# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# ZSH completion backward TAB as Shift-TAB
bindkey '^[[Z' reverse-menu-complete

# NVM
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Serverless
#source $HOME/.config/zsh/serverless.zsh


#source ~/.zplug/init.zsh
#zplug 'wfxr/forgit'

#zplug load

# microk8s autocompletion
#ERROR=$(microk8s.status)

#if [ $? -eq 0 ]
#then
	#if [ $commands[microk8s.kubectl] ]; then source <(microk8s.kubectl completion zsh | sed "s/complete -o default -F __start_kubectl kubectl/complete -o default -F __start_kubectl microk8s.kubectl/g" | sed "s/complete -o default -o nospace -F __start_kubectl kubectl/complete -o default -o nospace -F __start_kubectl microk8s.kubectl/g"); fi
#fi
compinit -d $HOME/.cache/zsh/zcompdump-$ZSH_VERSION

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira-custom"

#########################################################################
#			WAL-THEME
#########################################################################
# Import colorscheme from 'wal' asynchronously
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh


#########################################################################
#  PLUGINS
#########################################################################
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  pip
  docker
  cargo
  docker-machine
  copydir
  copyfile
  colored-man-pages
  npm
  nvm
  node
  ng
  jsontools
  aws
  vi-mode
)


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# ======================================================================
# FZF
# ======================================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ======================================================================
# VI MODE
# ======================================================================
# function in >> ~/.config/zsh/common-functions.zsh
zle -N zle-line-init
zle -N zle-keymap-select


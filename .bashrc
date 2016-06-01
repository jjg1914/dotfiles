#!/bin/bash

# locale
export LANG="en_US.UTF-8"
export LC_ALL="$LANG"

# editor
export EDITOR=vim

# paths
export PATH="$HOME/.local/bin:$HOME/.rbenv/bin:$PATH"
export NVM_DIR="$HOME/.nvm"

# prompt
export PS1='\[$(tput setaf 2)\]\u@\h \[$(tput setaf 4)\]\W \[$(tput setaf 1)\]$ \[$(tput sgr0)\]'

alias ls="ls --color"
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

eval "$(rbenv init -)"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

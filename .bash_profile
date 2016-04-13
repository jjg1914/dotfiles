#!/bin/bash

if [ -f ~/.bashrc ]
then
  # shellcheck source=/dev/null
  source ~/.bashrc
fi

[[ $- != *i* ]] && return
if which tmux > /dev/null 2>&1
then
  if [[ -z "$TMUX" ]] && [[ $TERM == "xterm" ]]
  then
    exec tmux attach || exec tmux
  fi
fi

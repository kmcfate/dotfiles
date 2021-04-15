#!/bin/bash
if [[ -d "$HOME/.solarized/dircolors-solarized" ]]
then
  eval `dircolors ~/.solarized/dircolors-solarized/dircolors.ansi-universal`
fi

alias ls='ls --color=auto'

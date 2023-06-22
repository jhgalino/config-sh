# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jhgalino/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Add hx as default editor
export EDITOR=vim
export TERMINAL=kitty
export BROWSER=firefox

# Add scripts path
export PATH=$PATH:~/AB_Scripts

alias ls='ls --color=auto'

# Package sizes
alias pkg_size="expac -H M '%m\t%n' | sort -h"

eval "$(starship init zsh)"
export GPG_TTY=$(tty)



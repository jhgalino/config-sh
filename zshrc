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
export EDITOR=/usr/bin/hx
export TERMINAL=kitty
export BROWSER=firefox

# Add scripts path
export PATH=$PATH:~/AB_Scripts

alias ls='ls --color=auto'

# Package sizes
alias pkg_size="expac -H M '%m\t%n' | sort -h"

eval "$(starship init zsh)"
export GPG_TTY=$(tty)

# Following line was automatically added by arttime installer
export PATH=/home/jhgalino/projects/arttime/bin:$PATH

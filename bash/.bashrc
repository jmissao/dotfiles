#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim
export LANG="en_US.UTF-8"
export GTK_IM_MODULE=uim
export XMODIFIERS=@im=uim
export QT_IM_MODULE=uim

PS1='\[\e[1;36m\][\t.\[\e[0;37m\]\u@\h \w\[\e[1;36m\]] \[\e[1;36m\]\$ \[\e[1;37m\] '

alias ls='ls --color=auto'
alias rm="rm -iv"
alias cp="cp -iv"
alias mv="mv -iv"

set -o vi
shopt -s autocd
shopt -s checkjobs
shopt -s checkwinsize
GPG_TTY=`tty`
export GPG_TTY


stty -ixon

PATH="$PATH:$HOME/bin:$HOME/go/bin"

HISTSIZE=
HISTFILESIZE=

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

GIT_PROMPT=/usr/share/git/git-prompt.sh
if [ -f "$GIT_PROMPT" ]
then
    GIT_PS1_SHOWCOLORHINTS=1
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    GIT_PS1_SHOWUPSTREAM=1
    source $GIT_PROMPT
    PS1='\[\e[1;36m\][\t.\[\e[0;37m\]\u@カーミット空間 \w\[\e[1;36m\]$(__git_ps1 " %s")] \[\e[1;36m\]\$ \[\e[1;37m\]'
else
    PS1='\[\e[1;36m\][\t.\[\e[0;37m\]\u@カーミット空間 \w\[\e[1;36m\]] \[\e[1;36m\]\$ \[\e[1;37m\]'
fi

alias ls='ls --color=auto'
alias rm="rm -iv"
alias cp="cp -iv"
alias mv="mv -iv"

set -o vi
shopt -s autocd
shopt -s checkjobs
shopt -s checkwinsize
shopt -s histappend
GPG_TTY=`tty`
export GPG_TTY


stty -ixon

export PATH="$PATH:$HOME/bin:$HOME/go/bin"

export HISTSIZE=
export HISTFILESIZE=
export PROMPT_COMMAND='history -a'
export HISTCONTROL=ignoreboth

if [ -f "$HOME/.z.sh" ]
then
    source ~/.z.sh
fi

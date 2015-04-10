#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

setxkbmap gb

alias ls='ls --color=auto'
alias sudo='sudo '
alias emacs='emacs -nw'
#PS1='\e\[[0;37m\]\]fozzy \e\[[1;3m\]\]\w \e\[[0;37m\]\]\$ '
PS1="\[\e[00;37m\]\u \[\e[0m\]\[\e[01;36m\]\w\[\e[0m\]\[\e[00;37m\] \\$ \[\e[0m\]"

export VISUAL=vim
export EDITOR="$VISUAL"

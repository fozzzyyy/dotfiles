#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

setxkbmap -layout gb,us
setxkbmap -option 'grp:alt_shift_toggle'

alias ls='ls --color=auto'
alias sudo='sudo '
alias emacs='emacs -nw'
#PS1='\e\[[0;37m\]\]fozzy \e\[[1;3m\]\]\w \e\[[0;37m\]\]\$ '
PS1="\[\e[00;37m\]\u \[\e[0m\]\[\e[01;36m\]\w\[\e[0m\]\[\e[00;37m\] \\$ \[\e[0m\]"

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/fozzy/.vimpkg/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

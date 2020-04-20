#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color =auto'
alias ll='ls -alF --color=auto'
alias p='sudo pacman'
alias v='vim'
alias g='git'
alias z='zathura'
alias ydl='youtube-dl'
alias mkd='mkdir -pv'
alias rmd='rmdir -pv'
alias gccg='gcc -g -Wall'
alias g++g='g++ -g -wall'
alias valgrindlc='valgrind --leak-check=yes'
alias grep='grep --color=auto'
alias egrep='egrep --color==auto'
alias fgrep='fgrep --color==auto'

# Disable ctrl-s and ctrl-q
stty -ixon

# Don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISCONTROL=ignoredups:ignorespace

# cd by typing directory name
shopt -s autocd

# export PS1="\[\e[1;31m [\]\[\e[m\]\e[1;33m\u\e[m\]\e[1;22m@\e[m\]\e[1;34m\h\e[m\] \W\e[1;31m]\[\e[m\]\$ "

export PS1='\e[1;34m[\u@\h \W]\$ \e[m '

# proper line wrap on window resize
shopt -s checkwinsize

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# basic aliases
alias la='ls -A --color=auto --group-directories-first'
alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -alF --color=auto --group-directories-first'
alias cl='clear'
alias mkd='mkdir -pv'
alias rmd='rmdir -pv'
alias grep='grep --color=auto'
alias egrep='egrep --color==auto'
alias fgrep='fgrep --color==auto'
alias p='sudo pacman'
alias ...='../..' # 2 levels higher
alias ....='../../..' # 3 levels higher
alias .....='../../../..' # 4 levels higher

# program aliases
alias v='nvim'
alias vim='nvim'
alias z='zathura'
alias rename='perl-rename'
alias ydl='youtube-dl'

# git aliases
alias g='git'
alias gcm='git commit -m'
alias gs='git status'
alias gc='git clone'

# c aliases
alias gccg='gcc -g -Wall'
alias g++g='g++ -g -Wall'
alias val='valgrind --leak-check=yes'

# Disable ctrl-s and ctrl-q
stty -ixon

# Don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISCONTROL=ignoredups:ignorespace

# cd by typing directory name
shopt -s autocd

export PS1='\e[1;34m[\u@\h \W]\$ \e[m '

# proper line wrap on window resize
shopt -s checkwinsize

# Enable colors and change prompt:
autoload -U colors && colors
# rainbow
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# aqua
#PS1="%B%{$fg[green]%}[%{$fg[blue]%}%n%{$fg[cyan]%}@%{$fg[blue]%}%M%{$fg[cyan]%}%~%{$fg[green]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=-/.cache/zsh/history

export EDITOR=nvim
export PATH=$PATH:/home/andrew/.cargo/bin

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Include hidden files in autocomplete
_comp_options+=(globdots)

# no ctrl-s and ctrl-q
stty -ixon

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# cd without pressing cd
setopt auto_cd

# basic aliases
alias la='ls -A --color=auto --group-directories-first'
alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -alF --color=auto --group-directories-first'
alias cl='clear'
alias mkd='mkdir -pv'
alias rmd='rmdir -pv'
alias grep='grep --color=auto'
alias pgrep='pgrep -l'
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

# Lines configured by zsh-newuser-install
setopt autocd nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/andrew/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

## Remove duplicate entries
setopt PUSHD_IGNORE_DUPS

## This reverts the +/- operators.
setopt PUSHD_MINUS

# bare git repo for dotfiles
alias config='/usr/bin/git --git-dir=/home/andrew/.cfg/ --work-tree=/home/andrew'

# Load zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

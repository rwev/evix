#!/usr/bin/env bash

alias apt='sudo apt-get'
alias up='apt update && apt upgrade'

alias cat='bat'
alias find='fd'
alias grep='rg'
alias ls='lsd'

alias lynx='lynx -cfg=~/.lynxrc'
alias lynxd='lynx -dump -stdin'

alias gitc='git commit -a -m'
alias gits='git status'
alias gitp='git pull'
alias gitd='git diff'
alias gitf='git ls-files'
alias gitconf='$EDITOR ./.git/config'

alias gitgconf='$EDITOR ~/.gitconfig'
alias gitgcreds='$EDITOR ~/.git-credentials'

alias grepnocom="grep -v '^$\|^\s*\#'"
alias grepnums='grep --line-number --color=auto'

alias weather='curl wttr.in'
alias cal='calcurse'

alias diff='diff -u'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'

alias youtube-dl='youtube-dl --output "%(id)s-%(title)s.%(ext)s"'
alias yta='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --audio-format best'

alias cpr='rsync --archive --human-readable --progress --stats'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias pfindnkill="pgrep %1 | pkill"

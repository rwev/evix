#!/usr/bin/env bash

alias apt='sudo apt-get'
alias up='apt update && apt upgrade'

alias cat='bat'
alias find='fd'
# alias grep='ripgrep'

alias lynx='lynx -cfg=~/.lynxrc'
alias lynxd='lynx -dump -stdin'

alias gitc="git commit -a -m"
alias gits="git status"
alias gitconf="vim ./.git/config"

alias grepnocom="grep -v '^$\|^\s*\#'"
        alias grepnums='grep --line-number --color=auto'

alias weather='curl wttr.in'

alias diff='diff -u'

alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'

alias ls='LC_COLLATE=C ls -lAh --color=auto --time-style="+%Y-%m-%d +%H:%M:%S" --group-directories-first'

alias tw='timew :ids'
alias tws='tw summary'

alias t='task'
alias tcal='t list project:calendar +DUE && t calendar'

alias youtube-dl='youtube-dl --output "%(id)s-%(title)s.%(ext)s"'
alias yta='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --audio-format best'

alias cpr='rsync --archive --human-readable --progress --stats'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias pfindnkill="pgrep %1 | pkill"

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

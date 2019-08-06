#!/usr/bin/env bash

alias apt='sudo apt-get'
alias up='apt update && apt upgrade'

alias cat='bat'
alias find='fd'
alias grep='rg'
alias ls='lsd'

alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias mutt='mutt -F ~/.muttrc'
alias lynx='lynx -cfg=~/.lynxrc'
alias lynxd='lynx -dump -stdin'

alias abook='abook --config ~/.abookrc --datafile ~/.abook/addressbook'

alias v='vim'
alias vd='vim ./'
alias vcal='vim -c "Calendar"' # -c "Goyo"'
alias vnote='vim -c "Note" -c "Goyo"'

alias gita='git add .'
alias gitc='git commit -a -m'
alias gits='git status'
alias gitpl='git pull'
alias gitps='git push'
alias gitd='git diff'
alias gitf='git ls-files'
alias gitconf='$EDITOR ./.git/config'

alias gitgconf="$EDITOR ${HOME}/.gitconfig"
alias gitgcreds="$EDITOR ${HOME}/.git-credentials"

alias ranger="ranger --confdir=${HOME}/.ranger"
alias rd='ranger'

alias grepnocom="grep -v '^$\|^\s*\#'"
alias grepnums='grep --line-number --color=auto'

alias weather='curl wttr.in'
alias cal='calcurse'

alias lbs='hledger-ui -f ~/.ledger/bus'
alias l4x='hledger-ui -f ~/.ledger/4x4'
alias lmo='hledger-ui -f ~/.ledger/moto'
alias lp='hledger-ui -f ~/.ledger/personal'

alias diff='diff -u'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias rmd='rm -rf'

alias youtube-dl='youtube-dl --output "%(id)s-%(title)s.%(ext)s"'
alias yta='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --audio-format best'

alias cpr='rsync --archive --human-readable --progress --stats'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias pfindnkill="pgrep %1 | pkill"

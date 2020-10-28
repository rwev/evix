#!/usr/bin/env bash

alias apt='sudo apt-get'
alias up='apt update && apt upgrade'

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
alias gitc='gita && git commit -a -m'
alias gitcp='git cherry-pick'
alias gits='git status'
alias gitpl='git pull'
alias gitps='git push'
alias gitl='git log'
alias gitd='git diff'
alias gitf='git ls-files'
alias gitco='git checkout'
alias gitm='git merge'
alias gitr='git reset'
alias gitconf='$EDITOR ./.git/config'
alias gitdat='git --git-dir=.git.dat'
alias gitgconf="$EDITOR ${HOME}/.gitconfig"
alias gitgcreds="$EDITOR ${HOME}/.git-credentials"

alias gitplall="for d in ./*/ ; do (cd \"$d\" && git pull); done"

alias ranger="ranger --confdir=${HOME}/.ranger"

alias grepnocom="grep -v '^$\|^\s*\#'"
alias grepnums='grep --line-number --color=auto'

alias lbs='hledger-ui -f ~/.ledger/bus'
alias l4x='hledger-ui -f ~/.ledger/4x4'
alias lmo='hledger-ui -f ~/.ledger/moto'
alias lode='hledger-ui -f ~/.ledger/lode'

alias diff='diff -u'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias rmd='rm -rf'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias pfindnkill="pgrep %1 | pkill"
alias alacritty-fullscreen-toggle="wmctrl -r 'Alacritty' -b toggle,fullscreen"

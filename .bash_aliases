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
alias gitc='git commit -a -m'
alias gitup="gitc $(date +%d.%m.%y-%H:%M:%S)"
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
alias r="ranger"

alias grepnocom="grep -v '^$\|^\s*\#'"
alias grepnums='grep --line-number --color=auto'

alias diff='diff -u'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias rmd='rm -rf'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias pfindnkill="pgrep %1 | pkill"
alias alacritty-fullscreen-toggle="wmctrl -r 'Alacritty' -b toggle,fullscreen"

alias ls='ls -hF --color=auto'
alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'

alias dkcon="docker ps -aq | xargs docker rm -f"
alias dkim="docker image ls -q | xargs docker rmi -f"
alias dpsa="docker ps -a"
alias dwipe="docker system prune --volumes -f"

alias dcb="docker-compose build"
alias dcd="docker-compose down"
alias dcu="docker-compose up"
alias dcub="docker-compose up --build"


alias npmgi="npm -g install"
alias npmgls="npm -g ls"
alias npmglsd="npm -g ls --depth"

alias npmid="npm install --save-dev"
alias npmip="npm install --save"
alias npmlo="npm install --package-lock-only"
alias npmloci="npm install --package-lock-only && npm ci"
alias npmrm="npm remove"

alias npmdoc="npm docs"
alias npmr="npm run"

alias npma="npm audit"
alias npmaf="npm audit fix"
alias npmb="npm run build"
alias npmbp="npm run build:prod"
alias npmc="npm run clean"
alias npmd="npm run dev"
alias npmf="npm run format"
alias npml="npm run lint"
alias npmlsd="npm ls --depth"
alias npms="npm start"
alias npmsl="npm run start:local"
alias npmt="npm run test"
alias npmtw="npm run test:watch"
alias npmtwd="npm run test:watch:debug"
alias npmu="npm update"
alias npmua="npm update --all"
alias npmw="npm run watch"

alias rmnm="rm -rf ./node_modules"
alias rmnmpl="rm -rf ./node_modules ./package-lock.json"
alias rmpl="rm ./package-lock.json"
alias rmrf="rm -rf"

# ----- timestamp aliases -----

alias da='date "+%Y-%m-%d %A    %T %Z"'
alias stamp='date "+%Y/%m/%d %a %H:%M:%S"'

alias fname='find . -name $1'
alias h='history | grep $1'
alias hosts='sudo vim /private/etc/hosts'
alias path='echo -e ${PATH//:/\\n}'
alias ports="lsof -iTCP -P -sTCP:LISTEN" # Show used ports # netstat
alias psg='ps -ef | grep $1'
alias sfname='sudo find / -name $1'
alias sudo='sudo ' # Replace sudo so it can be used with other aliases -----
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10' # Show most popular commands
alias trash="rm -rr ~/.Trash"



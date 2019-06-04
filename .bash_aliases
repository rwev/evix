alias apt='sudo apt-get'
alias up='apt update && apt upgrade'

alias lynx='lynx -cfg=~/.lynxrc'
alias grepnocom="grep -v '^$\|^\s*\#'"

alias gitc="git commit -a -m"
alias gits="git status"

alias grep='grep --line-number --color=auto'
alias diff='diff -u'

alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'

alias ls='LC_COLLATE=C ls -lAh --color=auto --time-style="+%Y-%m-%d +%H:%M:%S" --group-directories-first'

source ./.bash_functions
# TODO call functions directly, source aslises, functions in bashrc
alias gitfile='_gitfile'
alias filec='_filec'
alias filev='_filev'
alias diffconfs='_diffconfs'
alias makedot='_makedot'
alias takedot='_takedot'

alias t='task'
alias tw='timew :ids'
alias tws='tw summary'

alias youtube-dl='youtube-dl --output "%(id)s-%(title)s.%(ext)s"'
alias yta='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --audio-format best'

alias cpr='rsync --archive --human-readable --progress --stats'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias pfindnkill="pgrep %1 | pkill"
alias cal="calcurse"

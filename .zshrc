#!/usr/env/bin zsh

fpath=( "$HOME/.zfunctions" $fpath  )

plugins=(

tmux
tmuxinator

history

git
npm

pep8
pip
python
pyenv
pylint

lein

fzf
fd
cp
torrent
z
jsontools
)

ENABLE_CORRECTION="true"

# source compatible bash + zsh-specific files
for f in .bash_vars .bash_aliases .bash_functions .zsh_setopts .zsh_zstyles
do {
        if [ -f $f ]; then {
                source $f
                echo "... sourced $f from .zshrc"
        } else echo "ERROR: unable to source $f, not found"
fi
} done

HISTFILE=~/.zsh_history

ZSH_THEME=""
source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure


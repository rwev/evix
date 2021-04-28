#!/usr/env/bin zsh

fpath=( "$HOME/.zfunctions" $fpath  )

plugins=(
git
npm
pip
fzf
fd
z
)

ENABLE_CORRECTION="true"

# source compatible bash + zsh-specific files
for f in ~/.bash_vars ~/.bash_aliases ~/.bash_functions ~/.zsh_setopts ~/.zsh_zstyles
do {
        if [ -f $f ]; then {
                source $f
        } fi
} done

HISTFILE=~/.zsh_history

ZSH_THEME=""
ZSH=~/.oh-my-zsh

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

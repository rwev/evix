#!/usr/env/bin bash

for f in .bash_vars .bash_shopts .bash_functions .bash_functions;
do {
        source $f
        echo "... sourced $f from .bashrc"
}; done

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

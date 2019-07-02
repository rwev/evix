#!/usr/env/bin bash

for f in .bash_vars .bash_shopts .bash_functions .bash_functions;
do {
        if [ -f $f ]; then {
                source $f
        } fi
}; done

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

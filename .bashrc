#!/usr/env/bin bash

for f in .bash_vars .bash_shopts .bash_aliases .bash_functions .bash_prompt
do {
        if [ -f $f ]; then {
                source $f
                echo "... sourced $f from .bashrc"
        } else echo "ERROR: unable to source $f, not found"
fi
}; done


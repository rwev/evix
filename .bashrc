#!/usr/env/bin bash

for f in .bash_vars .bash_shopts .bash_functions .bash_functions;
do {
        if [ -f $f ]; then {
                source $f
        } fi
}; done

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

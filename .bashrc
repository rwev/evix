#!/usr/env/bin bash

for f in .bash_*[^profile];
do {
        source $f
        echo "... sourced $f from .bashrc"
}; done

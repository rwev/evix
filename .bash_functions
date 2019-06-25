#!/usr/bin/env bash

for f in  ./.bash/.bash_functions_*;
do {
        source ${f}
        echo "... sourced ${f} from .bash_functions"
}
done

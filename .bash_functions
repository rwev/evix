#!/usr/bin/env bash

for f in  ./.bash/functions/*;
do {
        source $f
}
done

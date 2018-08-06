#!/bin/bash

makethefiles() {
    while read p; do
        head -c 1K </dev/urandom >./"$p"
    done <$1
}

declare -g USERNAME=`whoami`
makethefiles files
cat cast > Docs/Ben/Wired_Blacklist.txt

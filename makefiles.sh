#!/bin/bash

makethefiles() {
    while read p; do
        touch ./"$p"
    done <$1
}

declare -g USERNAME=`whoami`

makethefiles files
cat cast > Docs/Ben/Wired_Blacklist.txt

#!/bin/bash

makethedirs() {
    while read p; do
        mkdir Docs/"$p"
        mkdir Downloads/"$p"
        mkdir Misc/"$p"
        mkdir Music/"$p"
    done <$1
}

declare -g USERNAME=`whoami`
mkdir Docs
mkdir Misc
mkdir Music
mkdir Downloads
makethedirs targets

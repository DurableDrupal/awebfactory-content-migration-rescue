#!/bin/bash
# execution for Spanish: ./build.sh es
# execution for English: ./build.sh en

lang=$1

if [[ -a ./manuscript/${lang}/build.sh ]]; then
    source ./manuscript/${lang}/build.sh
else
    echo "Language not supported"
fi

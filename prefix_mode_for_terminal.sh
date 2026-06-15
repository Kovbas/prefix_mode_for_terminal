#!/bin/bash -i

PREFIX=$1

FMT_RED="\033[0;31m"
FMT_BOLD="\033[1m"
FMT_RESET="\033[0m"

while  :; do
    printf "${PS1@P}prefix ${FMT_RED}${FMT_BOLD}${PREFIX}${FMT_RESET}> "
    read -ra command
    ${PREFIX} "${command[@]}"
done

# while read -erp "*git*${PS1@P}" cmd rest; do
#         if _=`git help $cmd 2>&-`
#                 then eval git $cmd "$rest"
#                 else eval $cmd "$rest"
#         fi
# done

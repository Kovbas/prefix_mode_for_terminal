#!/bin/bash -i

stty -echoctl

exit_on() {
    printf "\n"
    exit
}

trap exit_on SIGINT

PREFIX=$1

FMT_RED="\033[0;31m"
FMT_GREEN="\033[0;32m"
FMT_BOLD="\033[1m"
FMT_RESET="\033[0m"

if [ -z "${PREFIX}" ]
then
    PRMPT="${PS1@P}${FMT_RED}${FMT_BOLD}NO PREFIX${FMT_RESET}> "
else
    PRMPT="${PS1@P}prefix ${FMT_GREEN}${FMT_BOLD}${PREFIX}${FMT_RESET}> "
fi

while  :; do
    printf "${PRMPT}"
    read -ra command
    if [ ${command} == "exit" ]; then break; fi
    ${PREFIX} "${command[@]}"
done

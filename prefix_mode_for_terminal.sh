#!/bin/bash -i
    # lines are indented to prevent adding to history

    trap trap_ctrlc INT

    PREFIX=$1

    trim()
    {
        var=$1
        trail="${var##*[^[:blank:]]}"    # get trailing space
        var="${var%${trail}}"            # remove trailing space
        lead="${var%%[^[:blank:]]*}"     # get leading space
        trim="${var#${lead}}"            # remove leading space
        printf "$trim"
    }
    PREFIX="$(trim "${PREFIX}")"

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

    trap_ctrlc()
    {
        printf "\n${PRMPT}Enter "exit" to stop prefix mode.\n"
        printf "${PRMPT}"
    }

    wrap_command()
    {
        # call from the function prevents the main script termination when sub-process is terminated
        $@
    }

    while : ; do
        printf "${PRMPT}"
        read -ra command
        if [ "${command}" == "exit" ]; then break; fi
        full_command="${PREFIX} ${command[@]}"
        history -s ${full_command}
        wrap_command "${full_command}"
    done

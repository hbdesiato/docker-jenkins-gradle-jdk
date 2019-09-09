#! /bin/bash
curl -s https://api.sdkman.io/2/candidates/java/Linux64/versions/list?installed= | {
    VERSION=0
    while read line ; do
        if [[ $line =~ ([0-9]*)([^ ]*)-open ]] ; then
            if [[ ${BASH_REMATCH[2]} != .ea* && $VERSION -lt ${BASH_REMATCH[1]} ]] ; then
                VERSION=${BASH_REMATCH[1]}
                RESULT=${BASH_REMATCH[0]}
            fi
        fi
    done
    echo $RESULT
}

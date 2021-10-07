#!/bin/sh

ICON="📦"
PACS=$(pacman -Qu | grep -Fcv "[ignored]")
MESSAGE="${ICON} ${PACS}"
if [ "$PACS" -gt "0" ] ; then
    echo "$MESSAGE"
else
    MESSAGE=""
    MESSAGE=$(printf "%-7s" $MESSAGE)
    echo "$MESSAGE"
fi

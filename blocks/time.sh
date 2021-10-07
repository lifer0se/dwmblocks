#!/bin/sh
ICON=""
DATE=$(date '+%a, %d %b')
TIME=$(date '+%H:%M:%S')
DATE="   $DATE  $ICON  $TIME   "
echo "$DATE"

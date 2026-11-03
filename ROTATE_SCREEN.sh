#!/usr/local/bin/bash --
#
# FILE       : /hem/bin/ROTATE_SCREEN
# USAGE      :
# ABSTRACT   :
#
# AUTHOR     : agne
# CREADED    : Sat Jan 20 12:49:15 CET 2024
# MODIFIED   :
# ==============================

ROTATION="${0##*-}"
ROTATION="${ROTATION%.sh}"
if [ -n "$1" ]
then
	ROTATION="$1"
fi
MONITOR="$(xrandr --listactivemonitors | grep '0:'  | awk '{ print $4 }')"

case "$ROTATION" in
    normal|right|inverted|left)
        xrandr --output "$MONITOR" --rotate "$ROTATION"
        ;;
    *)
        echo "Usage: ROTATE_SCREEN <normal|right|inverted|left>" 1>&2
        exit 1
        ;;
esac

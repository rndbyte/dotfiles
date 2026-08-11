#!/bin/sh

# This file is executed by the DM as the default session.
# Also this is a custom session launcher for startx command.

# It is supposed to do the initial startup of the session (e.g. define environment variables),
# and then launch programs specific to the GUI (usually at least window manager).

# Detect session choice
if [ -n "$1" ]; then
    SESSION="$1"
elif [ -n "$DESKTOP_SESSION" ]; then
    SESSION="$DESKTOP_SESSION"
else
    SESSION="i3"
fi

case "$SESSION" in
    i3|i3wm)
        export XDG_CURRENT_DESKTOP="i3"
        export XDG_SESSION_DESKTOP="i3"
        export DESKTOP_SESSION="i3"
        export TERMINAL="uxterm"
        exec i3
        ;;
    xfce|xfce4)
        export XDG_CURRENT_DESKTOP="XFCE"
        export XDG_SESSION_DESKTOP="xfce"
        export DESKTOP_SESSION="xfce"
        exec startxfce4
        ;;
    *)
        echo "Unknown session: $SESSION" >&2
        echo "Available: i3, xfce" >&2
        exit 1
        ;;
esac

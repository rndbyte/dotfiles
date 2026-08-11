#!/bin/sh

# This file called automatically by startx.

# Source .xprofile first
[ -f ~/.xprofile ] && . ~/.xprofile

# Pass all arguments to .xsession (session launcher).
exec ~/.xsession "$@"

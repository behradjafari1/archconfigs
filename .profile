#!/bin/sh


# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':' -)"

# Default programs:
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export FILEMGR="lf"
export STATUSBAR="dwmblocks"


if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	  exec startx
fi

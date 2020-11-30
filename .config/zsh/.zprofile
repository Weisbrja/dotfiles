#!/bin/zsh

# startx if on tty
[[ -n "$(tty)" && -z $(pgrep -u $USER "\bXorg$") ]] && exec startx

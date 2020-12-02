#!/bin/zsh

# execute startx if this file is read from tty
[[ -n "$(tty)" && -z $(pgrep -u $USER "\bXorg$") ]] && exec startx

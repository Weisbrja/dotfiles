#!/bin/zsh

# execute startx if this file is read from tty
[[ -n "$(tty)" && -z $(pgrep -u $USER "Xorg") ]] && exec startx "${XDG_CONFIG_HOME:-$HOME/.config}/X11/xinitrc"

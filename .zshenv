#!/bin/zsh

# add scripts to the path
export PATH="$PATH:$(find "$HOME/.local/bin" | paste -sd ":")"

# set default programs
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export TERMINAL="st"
export READER="zathura"
export BROWSER="firefox"

# set xdg variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# set variables for the home directory clean up
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export NPM_CONFIG_CACHE="${XDG_CACHE_HOME:-$HOME/.cache}/npm"

# set zsh variables
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="$ZDOTDIR/zsh_history"
export HISTSIZE=5000
export SAVEHIST=5000

# enable color and mouse support in less
export LESS="-R --mouse"

# set qt theme variable
export QT_QPA_PLATFORMTHEME="qt5ct"

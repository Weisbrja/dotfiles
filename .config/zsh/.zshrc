#!/bin/zsh

[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zsettings ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zsettings"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zfunctions ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zfunctions"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zcompletions ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zcompletions"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zaliases ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zaliases"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zshortcuts ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zmappings"

source '/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh'

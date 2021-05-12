#!/bin/zsh

[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/settings ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/settings"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/functions ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/functions"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/completions ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/completions"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/aliases ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/aliases"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/mappings ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/mappings"

source '/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh'

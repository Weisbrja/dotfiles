#!/bin/zsh

# history settings
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

# aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zaliases" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zaliases"

# completion settings
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zcompletions" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zcompletions"

# shortcuts
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zshortcuts" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zshortcuts"

# vim mode
bindkey -v
export KEYTIMEOUT=1

# vim keys in the completion menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history

# different cursor shapes
cursor_block='\e[1 q'
cursor_beam='\e[5 q'
function zle-keymap-select {
	case "$KEYMAP" in
		vicmd) echo -ne "$cursor_block" ;;
		viins|main) echo -ne "$cursor_beam" ;;
	esac
}
zle -N zle-keymap-select

zle-line-init() {
	echo -ne "$cursor_beam"
}
zle -N zle-line-init

function precmd {
	# set the terminal title to the current working directory
	print -Pn '\e]0;%~\a'
}

function preexec {
	# set the terminal title to the current command
	print -Pn "\e]0;$1\a"

	# use the beam cursor
	echo -ne "$cursor_beam"
}

# prompt variables
autoload -Uz colors && colors
PS1='%B%F{yellow}%n%b%f@%B%F{magenta}%M %F{blue}%~ %(?.%F{green}.%F{red})$%b%f '
PS2=''

# plugins
source '/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh' 2>/dev/null

# start z
[ -r '/usr/share/z/z.sh' ] && source '/usr/share/z/z.sh'

#!/bin/zsh

# history settings
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY

# completion settings
setopt ALIASES
setopt CORRECT
autoload -Uz compinit
zstyle ":completion:*" menu select
zmodload zsh/complist
compinit
_comp_options+=( globdots )

# vim mode
bindkey -v
export KEYTIMEOUT=1

# vim keys in the completion menu
bindkey -M menuselect "h" vi-backward-char
bindkey -M menuselect "l" vi-forward-char
bindkey -M menuselect "k" vi-up-line-or-history
bindkey -M menuselect "j" vi-down-line-or-history

# different cursor shapes
cursor_block="\e[1 q"
cursor_beam="\e[5 q"
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] ||
		[[ $1 == "block" ]]
	then
		echo -ne $cursor_block
	elif [[ ${KEYMAP} == main ]] ||
		[[ ${KEYMAP} == main ]] ||
		[[ ${KEYMAP} == viins ]] ||
		[[ $1 == "beam" ]]
	then
		echo -ne $cursor_beam
	fi
}
zle -N zle-keymap-select

zle-line-init() {
	echo -ne $cursor_beam
}
zle -N zle-line-init

# edit the current command in vim with ctrl-e
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey "^e" edit-command-line

function precmd {
	# set the terminal title to the current working directory
	print -Pn "\e]0;%~\a"
}

function preexec {
	# set the terminal title to the current command
	print -Pn "\e]0;$1\a"

	# use beam cursor
	echo -ne $cursor_beam
}

# aliases
alias ls="exa --color=auto --group-directories-first"
alias lt="ls -aT"
alias ll="ls -l"
alias l="ls -la"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias vim="nvim"

alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias i="sudo make clean install; sudo make clean"
alias c="vim config.def.h"

alias upd="sudo reflector -a 12 -c Germany --sort rate --verbose --save /etc/pacman.d/mirrorlist; yay -Syyu --devel --noconfirm; yay -Yc --noconfirm; yay -Sc --noconfirm"

# colors
autoload -Uz colors && colors

# prompt variables
PS1="%B%F{yellow}%n%b%f@%B%F{magenta}%M %F{blue}%~ %(?.%F{green}.%F{red})$%b%f "
PS2="> "

# plugins
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

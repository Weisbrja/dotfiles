#!/bin/zsh

# set the history settings
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt share_history

# set the completion settings
setopt correct
setopt auto_list
setopt extended_glob
autoload -Uz compinit && compinit
_comp_options+=(globdots)
zstyle ":completion:*" menu select

# set some other settings
setopt interactive_comments

# enable the vim-mode
bindkey -v
export KEYTIMEOUT=1

# enable vim-keys in the completion menu
zmodload zsh/complist
bindkey -M menuselect "h" vi-backward-char
bindkey -M menuselect "l" vi-forward-char
bindkey -M menuselect "k" vi-up-line-or-history
bindkey -M menuselect "j" vi-down-line-or-history

# enable different cursor shapes for the vim-mode
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

# set the terminal title to the current working directory before running the next command
function precmd {
	print -Pn "\e]0;%~\a"
}

# set the terminal title to the next command to run before executing it
function preexec {
	print -Pn "\e]0;$1\a"
}

# enable editing the current command in vim with ctrl-e
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey "^e" edit-command-line

# set aliases
alias sudo="sudo "

alias ls="exa --color=auto --group-directories-first"
alias lt="ls -aT"
alias ll="ls -l"
alias l="ls -la"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias df="df -h"
alias free="free -m"

alias vim="nvim"
alias vi="nvim"
alias v="nvim"

alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias i="sudo make clean install; sudo make clean"
alias c="vim config.def.h"

alias upd="sudo reflector -a 12 -c Germany --threads 4 --sort rate --verbose --save /etc/pacman.d/mirrorlist; yay -Syyyu --noconfirm; yay -Yc --noconfirm; yay -Sc --noconfirm"

# enable colors
autoload -Uz colors && colors

# set the prompt variables
PS1="%B%{$fg[magenta]%}%n%{$fg[white]%}@%{$fg[yellow]%}%M %{$fg[cyan]%}%~ %(?.%{$fg[green]%}.%{$fg[red]%})$%{$reset_color%}%b "
PS2=">>> "

# load plugins
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

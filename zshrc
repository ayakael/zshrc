HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch
unsetopt beep extendedglob notify
bindkey -e

autoload -Uz compinit colors
compinit
colors

gsrcArray=(/etc/zsh/zshps /etc/zsh/zshenv /etc/zsh/zshalias)
usrcArray=(~/.zshenv ~/.zshalias)


# Global settings
for gsrc in "${gsrcArray[@]}"; do
	if [[ -f "${gsrc}" ]]; then
		source "${gsrc}"
	fi
done

# User settings
for gsrc in "${gsrcArray[@]}"; do
	if [[ -f "${gsrc}" ]]; then
		source "${gsrc}"
	fi
done

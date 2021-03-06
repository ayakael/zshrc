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
	[[ -f "${gsrc}" ]] && source "${gsrc}"
done

# User settings
for usrc in "${usrcArray[@]}"; do
    [[ -f "${usrc}" ]] && source "${usrc}"
done

# History
export HISTFILE="${XDG_DATA_HOME}/zsh/zhistory"
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.


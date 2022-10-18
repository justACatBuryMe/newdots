# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

PS1="%F{184}%n%f@%F{201}%m%f %F{34}%~%f %(?:%F{154};)%f:%F{9};(%f) %F{184}$%f%{$reset_color%} "
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$ZDOTDIR/history"
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# Load aliases and shortcuts if existent.
[ -f "$ZDOTDIR/shortcutrc" ] && source "$ZDOTDIR/shortcutrc"
[ -f "$ZDOTDIR/aliasrc" ] && source "$ZDOTDIR/aliasrc"
[ -f "$ZDOTDIR/zshnameddirrc" ] && source "$ZDOTDIR/zshnameddirrc"

# Basic auto/tab complete:
# Load compinit once a day for faster stuff
autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use $EDITOR keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

bindkey -s '^f' '^ucd "$(dirname "$(fzf)")"\n'

# Edit line in $EDITOR with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete

function up {
  for x in {1..$1}; do cd ..; done
}

function vw {
  $EDITOR $(where $1)
}

function Vw {
  sudo $EDITOR $(where $1)
}

function spot {
  cd ~/Music
  spotdl $@
}

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff88ff,underline"

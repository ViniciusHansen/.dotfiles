#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|
# by Hanzenn.

# If not running in a interactive shell, don't do anything
[[ $- != *i* ]] && return

# Prompt (PS1)
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zshhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Aliases
# dirs
alias \
    u="cd ~/UDESC" \
    i3c="nvim .config/i3/config"
# Verbosity and settings that you pretty much just always are going to want.
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	bc="bc -ql" \
	mkd="mkdir -pv" \
	ytdl="yt-dlp --add-metadata -i" \
	ytdla="ytdl -f 'ba' --audio-format mp3 --embed-thumbnail" \
    spotdl="spotdl --output-format opus" \
	ffmpeg="ffmpeg -hide_banner"

# Colorize commands when possible.
alias \
	ls="ls -hNl --color=auto --group-directories-first" \
	lsa="ls -ahNl --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"

# dumb aliases.
alias \
    ascii="figlet" \
    btw="neofetch" \
    uwu="uwufetch"

# These common commands are just too long! Abbreviate them.
alias \
    pac="sudo pacman" \
    ...="../.." \
    g="git"

# PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
    then PATH="$HOME/.local/share/applications:$PATH"
fi

if [ -d "$HOME/.flutter/flutter/bin" ] ;
    then PATH="/home/hnz/.flutter/flutter/bin:$PATH"
fi

# Export Shell Variables
export TERM="alacritty"
export EDITOR="nvim"

# syntax highlighting
source /home/hnz/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

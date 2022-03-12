#   _               _
#  | |__   __ _ ___| |__  _ __ ___
#  | '_ \ / _` / __| '_ \| '__/ __|
# _| |_) | (_| \__ \ | | | | | (__
#(_)_.__/ \__,_|___/_| |_|_|  \___|
# by Hanzenn.

# If not running in a interactive shell, don't do anything
[[ $- != *i* ]] && return

# Prompt (PS1)
export PS1="\[\033[38;5;196m\][\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]\[\033[38;5;2m\]@\[$(tput sgr0)\]\[\033[38;5;33m\]\h\[$(tput sgr0)\]\[\033[38;5;196m\]]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;98m\]\w\[$(tput sgr0)\] >> \[$(tput sgr0)\]"

# Aliases
alias ascii="figlet"
alias btw="neofetch"
alias ls='ls --color=auto --group-directories-first -l'
# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
# Internet
alias ytdl="youtube-dl -ic"
alias ytdla="youtube-dl -xic"

# PATH
if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

export PATH="/home/hnz/.flutter/flutter/bin:$PATH"

# reset any other custom ls alias
unalias ls
alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ll -A'

alias tr1='tree -L 1'
alias tr2='tree -L 2'
alias tr3='tree -L 3'

# If we have ack-grep, but not ack, alias ack to ack-grep
ACK=$(which ack)
ACKGREP=$(which ack-grep)
if [ "x$ACKGREP" != "x" ] && [ "x$ACK" == "x" ]; then
  alias ack="$ACKGREP"
fi

# source other bash files
[[ -f $HOME/.dotfiles/bash_export ]] && source $HOME/.dotfiles/bash_export
[[ -f $HOME/.dotfiles/bash_prompt ]] && source $HOME/.dotfiles/bash_prompt

# source local bash files
[[ -f $HOME/.local/bash_aliases ]] && source $HOME/.local/bash_aliases

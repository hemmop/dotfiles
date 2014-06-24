# reset any other custom ls alias
unalias ls
alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ll -A'

alias tr1='tree -L 1'
alias tr2='tree -L 2'
alias tr3='tree -L 3'

# source local bash files
[[ -f $HOME/.local/bash_aliases ]] && source $HOME/.local/bash_aliases

# source other bash files (unless disabled)
[[ -z "$NO_BASH_EXPORT"  ]] && source $HOME/.dotfiles/bash_export
[[ -z "$NO_BASH_PROMPT" ]] && source $HOME/.dotfiles/bash_prompt

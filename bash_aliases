# reset any other custom ls alias
unalias ls
alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ll -A'

alias tr1='tree -L 1'
alias tr2='tree -L 2'
alias tr3='tree -L 3'

# source other bash files
[[ -f $HOME/.dotfiles/bash_export ]] && source $HOME/.dotfiles/bash_export
[[ -f $HOME/.dotfiles/bash_prompt ]] && source $HOME/.dotfiles/bash_prompt

# setup perl5 libraries
if [ -f $HOME/.perl5lib ]; then
    for L in $(cat $HOME/.perl5lib); do
	if [ ! -v PERL5LIB ]; then
	    PERL5LIB=$L
	else
	    PERL5LIB=$L:$PERL5LIB
	fi
    done
    export PERL5LIB
fi

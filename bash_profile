## bash config file

export TERM=xterm-256color
export EDITOR=/usr/bin/vim

# aliases
alias ll='ls -l'
alias la='ls -al'

# server
alias myserv='ssh junkert@82.223.25.81'

# source ~/.bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

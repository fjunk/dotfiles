## bash config file

export TERM=xterm-256color
export EDITOR=/usr/bin/vim


# aliases
alias ll='ls -l'
alias la='ls -al'

# source ~/.bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

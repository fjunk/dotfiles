## bash config file

export TERM=xterm-256color
export EDITOR=/usr/bin/vim

# map capslock to escape
setxkbmap -option caps:escape

# aliases
alias ll='ls -l'
alias la='ls -al'

# source ~/.bashrc
if [-f ~/.bashrc ]; then
    source ~/.bashrc
fi

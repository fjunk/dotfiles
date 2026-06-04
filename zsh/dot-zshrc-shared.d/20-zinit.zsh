# Zinit plugin manager bootstrap.

ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"

if [[ ! -f "$ZINIT_HOME/zinit.zsh" ]]; then
  print -P "%F{33} %F{220}Installing Zinit plugin manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
  command mkdir -p "${ZINIT_HOME:h}" && command chmod g-rwX "${ZINIT_HOME:h}"
  command git clone https://github.com/zdharma-continuum/zinit "$ZINIT_HOME" && \
    print -P "%F{33} %F{34}Zinit installation successful.%f%b" || \
    print -P "%F{160}Zinit clone failed.%f%b"
fi

source "$ZINIT_HOME/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

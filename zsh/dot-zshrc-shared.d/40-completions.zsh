# Completion system and fzf shell bindings.

# Oh My Zsh snippets can add completion definitions; load them before compinit.
zinit snippet OMZP::git
zinit snippet OMZP::brew

# Initialise zsh's completion system before fzf-tab is loaded.
autoload -Uz compinit
compinit

# fzf key bindings/completions (reverse search, file selection, etc.). Load this
# before fzf-tab so fzf-tab gets the final Tab-completion widget.
[[ -f "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"

# Interactive zsh plugins loaded via Zinit.

# For postponing loading `fzf`
zinit ice lucid wait
zinit snippet OMZP::fzf

# fzf-tab must load after compinit and before plugins that wrap ZLE widgets.
zinit ice lucid wait
zinit light Aloxaf/fzf-tab

# Keep these near the end because they wrap command-line widgets.
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting

# Interactive zsh plugins loaded via Zinit.

# fzf-tab must load after compinit and before plugins that wrap ZLE widgets.
zinit light Aloxaf/fzf-tab

# zsh-vi-mode -> Starship mode bridge.
# zsh-vi-mode sets ZVM_MODE to: i, n, v, vl, or r.
zvm_config() {
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
}

_starship_zvm_mode() {
  export STARSHIP_VI_MODE="${ZVM_MODE:-${ZVM_MODE_INSERT:-i}}"
}
zvm_after_init_commands=(${zvm_after_init_commands:#_starship_zvm_mode} _starship_zvm_mode)
zvm_after_select_vi_mode_commands=(${zvm_after_select_vi_mode_commands:#_starship_zvm_mode} _starship_zvm_mode)

# `ice` applies only to the next plugin load.
zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

# Keep these near the end because they wrap command-line widgets.
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting

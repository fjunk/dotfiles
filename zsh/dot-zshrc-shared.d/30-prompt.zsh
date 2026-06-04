# Prompt and directory-jumping integrations.

# Smarter `cd` replacement / jump database.
eval "$(zoxide init zsh)"

# Starship prompt.
eval "$(starship init zsh)"

# Export Starship's last command status so custom prompt modules can use it.
_starship_export_cmd_status() {
  export STARSHIP_CMD_STATUS="${STARSHIP_CMD_STATUS:-0}"
}
precmd_functions=(${precmd_functions:#_starship_export_cmd_status} _starship_export_cmd_status)

# Environment shared by interactive shells.

# Make tools consistently use ~/.config (notably lazygit on some setups).
export XDG_CONFIG_HOME="$HOME/.config"

# Starship prompt config must be set before `starship init` runs.
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# Bun uses this both for installation location and PATH setup.
export BUN_INSTALL="$HOME/.bun"

# Todo dir for todo apps i.e. tuxedo
export TODO_DIR="$HOME/.todo"

# Put personal and tool-managed binaries ahead of the system PATH.
path=(
  "$HOME/.local/bin"
  "$HOME/.opencode/bin"
  "$BUN_INSTALL/bin"
  $path
)

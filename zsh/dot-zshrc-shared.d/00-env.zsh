# Environment shared by interactive shells.

# Make tools consistently use ~/.config (notably lazygit on some setups).
export XDG_CONFIG_HOME="$HOME/.config"

# Starship prompt config must be set before `starship init` runs.
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# Keep k9s config AND data (clusters/, benchmarks/, screen-dumps/, skins,
# aliases) together under ~/.config instead of splitting into
# ~/Library/Application Support (k9s otherwise honors XDG_DATA_HOME for that,
# which we don't want to set globally for every XDG-compliant app).
export K9S_CONFIG_DIR="$HOME/.config/k9s"

# Bun uses this both for installation location and PATH setup.
export BUN_INSTALL="$HOME/.bun"

# Todo dir for todo apps i.e. tuxedo
export TODO_DIR="$HOME/.todo"

# Pi config dir 
export PI_CODING_AGENT_DIR="$HOME/.config/pi"

# Put personal and tool-managed binaries ahead of the system PATH.
path=(
  "$HOME/.local/bin"
  "$BUN_INSTALL/bin"
  $path
)

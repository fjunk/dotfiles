# sdkman (manages Java/JAVA_HOME)
export SDKMAN_DIR="/opt/homebrew/opt/sdkman-cli/libexec"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

# bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"

# starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# kotlin-lsp: Homebrew exposes 'kotlin-lsp' but nvim-lspconfig expects 'intellij-server'
if command -v kotlin-lsp &>/dev/null && ! command -v intellij-server &>/dev/null; then
  ln -sf "$(command -v kotlin-lsp)" "$(dirname $(command -v kotlin-lsp))/intellij-server"
fi

# PATH
path=("$HOME/.local/bin" "$HOME/.opencode/bin" "$BUN_INSTALL/bin" $path)


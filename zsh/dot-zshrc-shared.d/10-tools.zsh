# Tool initialisation and compatibility shims.

# SDKMAN manages Java versions and JAVA_HOME.
export SDKMAN_DIR="/opt/homebrew/opt/sdkman-cli/libexec"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

# Bun completions/functions.
[[ -s "$HOME/.bun/_bun" ]] && source "$HOME/.bun/_bun"

# Hermit auto-activation hooks. The sed tweaks keep directory changes quiet.
HERMIT_ROOT_BIN="${HERMIT_ROOT_BIN:-"$HOME/bin/hermit"}"
eval "$(
  test -x "$HERMIT_ROOT_BIN" &&
    "$HERMIT_ROOT_BIN" shell-hooks --print --zsh |
    sed \
      -e 's|_hermit_deactivate;|_hermit_deactivate >/dev/null;|g' \
      -e 's|\. "${CUR}/bin/activate-hermit"|. "${CUR}/bin/activate-hermit" >/dev/null|g'
)"

# kotlin-lsp: Homebrew exposes `kotlin-lsp`, but nvim-lspconfig expects `intellij-server`.
if command -v kotlin-lsp &>/dev/null && ! command -v intellij-server &>/dev/null; then
  ln -sf "$(command -v kotlin-lsp)" "$(dirname "$(command -v kotlin-lsp)")/intellij-server"
fi

# setup worktrunk shell completion
if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi

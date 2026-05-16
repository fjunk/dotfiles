# sdkman (manages Java/JAVA_HOME)
export SDKMAN_DIR="/opt/homebrew/opt/sdkman-cli/libexec"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

# bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"

# PATH
path=("$HOME/.local/bin" "$HOME/.opencode/bin" "$BUN_INSTALL/bin" $path)

# fzf
source <(fzf --zsh)

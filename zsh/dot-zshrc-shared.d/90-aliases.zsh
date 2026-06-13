# Aliases: intentionally loaded last so local files can still override them.

# Editors and config shortcuts.
alias vi="vim"
alias vim="nvim"
alias zshconfig="nvim ~/.zshrc"

# TUI tools.
alias k="k9s"
alias lgit="lazygit"
alias ldoc="lazydocker"

# bat.
alias batc="bat --style plain"

# lsd.
alias ls="lsd"
alias l="lsd -l"
alias la="lsd -a"
alias lla="lsd -la"
alias lt="lsd --tree"

# Gradle.
alias gw="./gradlew"
alias gwa="./gradlew --configuration-cache assemble"
alias gwb="./gradlew --configuration-cache bootRun"
alias gwt="./gradlew --configuration-cache test"

# Git.
alias gpcs="git push -o ci.skip"
alias ggpura="git pull --rebase --autostash"
alias glg="git log --color --graph --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"

# Suffix aliases: run a command when opening files by extension.
alias -s md="bat"
alias -s kt="$EDITOR"
alias -s ts="$EDITOR"
alias -s yaml="bat -l yaml"
alias -s json="jless"

# Use fzf to open file in nvim
alias nf='fzf -m --preview="bat --color=always {}" --bind "enter:become(nvim {+})"'

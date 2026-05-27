# Generic
alias vi="vim"
alias vim="nvim"
alias zshconfig="nvim ~/.zshrc"

# lazygit
alias lg='lazygit'

# bat
alias batc='bat --style plain'

# lsd
alias ls='lsd'
alias l='lsd -l'
alias la='lsd -a'
alias lla='lsd -la'
alias lt='lsd --tree'

# gradle
alias gw="./gradlew"
alias gwa="./gradlew --configuration-cache assemble"
alias gwb="./gradlew --configuration-cache bootRun"
alias gwt="./gradlew --configuration-cache test"

# git
alias ga="git add"
alias gc="git commit"
alias gco="git checkout"
alias gst="git status" 
alias gp="git push"
alias gpcs="git push -o ci.skip"
alias ggpura="git pull --rebase --autostash"
alias glg="git log --color --graph --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"

# suffix aliases
alias -s md="bat"
alias -s kt="$EDITOR"
alias -s ts="$EDITOR"
alias -s yaml="bat -l yaml"
alias -s json="jless"

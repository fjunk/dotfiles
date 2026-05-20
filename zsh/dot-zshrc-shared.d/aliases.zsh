# Generic
alias vi="vim"
alias vim="nvim"
alias zshconfig="nvim ~/.zshrc"

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
alias gpcs="git push -o ci.skip"
alias ggpura="git pull --rebase --autostash"
alias glg="git log --color --graph --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"


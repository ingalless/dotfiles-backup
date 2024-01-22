export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="refined"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export BROWSER='/usr/bin/google-chrome-stable'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias v="nvim"
alias v.="nvim ."
alias art="php artisan"
alias ts="tmux-sessionizer"
alias ta="tmux attach"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
# alias dce="docker exec -it"
alias dlog="docker container logs -f"
alias dcls="docker container ls"
alias dc="docker compose"
alias e="$EDITOR"
alias c="composer"
alias clip="xclip -selection c"
alias gdone="git-close-branch"
alias bb="bitbucket-helpers"
alias n="nb"

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/scripts:$PATH
export PATH=$HOME/.dotnet/tools:$PATH
export PATH=$HOME/.local/lua-language-server/bin:$PATH
export PATH=$HOME/.dotnet:$PATH

# bun completions
[ -s "/home/ingalless/.bun/_bun" ] && source "/home/ingalless/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Configure Jira CLI
# in this file put:
# export JIRA_URL='https://mondago.atlassian.net'
# export JIRA_API_TOKEN=""
source "$HOME/.zshjira"

# Created by newuser for 5.8.1

eval "$(starship init zsh)"

eval "$(mise activate zsh)"

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$GOPATH/bin
export COLORTERM=truecolor

zle -N insert-unambiguous-or-complete
zle -N menu-search
zle -N recent-paths

HISTSIZE=50000
SAVEHIST=50000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
HISTFILE=~/.zsh_history

source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/.zsh/zsh-z/zsh-z.plugin.zsh
source $HOME/.zsh/zsh-background-notify/bgnotify.plugin.zsh

autoload -Uz compinit
compinit

alias ls="eza --icons"
alias bat="bat --style=auto"
alias grep="grep --color"
alias egrep="egrep --color"
alias uprepos=" cd ~/Projects/alexandria/repo-script && node updateRepos.js"
alias dps='docker ps --format "{{.Names}}\t{{.Image}}\t{{.Status}}" | sort | column -t'

autoload -U +X bashcompinit && bashcompinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias lzd='lazydocker'

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"

# bun completions
[ -s "/home/paulo/.bun/_bun" ] && source "/home/paulo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:$HOME/.maestro/bin

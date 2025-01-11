# Created by newuser

eval "$(starship init zsh)"

. "$HOME/.asdf/asdf.sh"

export PATH="$HOME/.cargo/bin:$PATH"

zle -N insert-unambiguous-or-complete
zle -N menu-search
zle -N recent-paths

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/.zsh/zsh-background-notify/bgnotify.plugin.zsh
source $HOME/.zsh/zsh-z/zsh-z.plugin.zsh
source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

alias ls="exa --icons"
alias bat="bat --style=auto"
alias grep="grep --color"
alias egrep="egrep --color"
alias uprepos=" cd ~/Projects/repos && node updateRepos.js"

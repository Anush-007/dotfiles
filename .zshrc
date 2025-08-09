export ZSH="$HOME/.oh-my-zsh"

### Env variables

## Editor

export EDITOR="nvim"


## Dotfiles

if [[ ! -v DOTFILES ]]; then
	export DOTFILES="${HOME}/.dotfiles"
fi

## Starship config path
if [[ ! -v STARSHIP_CONFIG ]]; then
	export STARSHIP_CONFIG="${DOTFILES}/starship.toml"
fi

ZSH_THEME="awesomepanda"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

# Jijutsu
#
autoload -U compinit
compinit
source <(jj util completion zsh)

### Aliases

## Remaps

# cat <-> bat
alias cat="bat"

# ls <-> eza
alias ls="eza --icons"
alias ll="eza -l --icons"
alias la="eza -la --icons"

##Shortcuts

# Git shortcuts
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"

# General shortcuts
alias config="nvim ${DOTFILES}"
alias v="nvim"

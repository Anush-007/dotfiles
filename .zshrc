export ZSH="$HOME/.oh-my-zsh"

### Env variables

## Editor

export EDITOR="nvim"


## Dotfiles

if [[ ! -v DOTFILES ]]; then
	export DOTFILES="${HOME}/.dotfiles"
fi

## Config

if [[ ! -v CONFIG ]]; then
	export CONFIG="${HOME}/.config"
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
# alias config="nvim ${DOTFILES}"
alias v="nvim"


### Links / ln

[ ! -e "${CONFIG}/ghostty" ] && ln -s "${DOTFILES}/ghostty" "${CONFIG}/ghostty"
[ ! -e "${CONFIG}/nvim" ] && ln -s "${DOTFILES}/nvim" "${CONFIG}/nvim"
[ ! -e "${HOME}/.zshrc" ] && ln -s "${DOTFILES}/.zshrc" "${HOME}/.zshrc"
[ ! -e "${CONFIG}/btop" ] && ln -s "${DOTFILES}/btop" "${CONFIG}/btop"

### Customizations
config() {
  pushd "${DOTFILES}" > /dev/null || {
    echo "Failed to navigate to the config path"
    return 1
  }

  nvim "."

  popd > /dev/null
}


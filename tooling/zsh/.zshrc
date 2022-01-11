# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Dotfiles
export DOTFILES="$HOME/.dotfiles"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Use ZSH
source $ZSH/oh-my-zsh.sh

# antigen
source $DOTFILES/tooling/zsh/_antigen.zsh

# golang
source $DOTFILES/tooling/zsh/_go.zsh

# aliases
source $DOTFILES/tooling/zsh/_aliases.zsh

#!/usr/bin/env zsh

# brew
eval "$(homebrew/bin/brew shellenv)"

# Dotfiles
export $DOTFILES="$HOME/.dotfiles"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Use ZSH
source $ZSH/oh-my-zsh.sh

# antigen
source $DOTFILES/antigen/_antigen.zsh

# golang
source $DOTFILES/zsh/_golang.zsh

# aliases
source $DOTFILES/zsh/_aliases.zsh

# GCloud installed by brew
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
export CLOUDSDK_HOME="/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"

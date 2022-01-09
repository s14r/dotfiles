#!/usr/bin/env bash

source $HOME/.dotfiles/lib/output.sh

# ###########################################################
# install homebrew (CLI Packages)
# ###########################################################
running "checking homebrew..."
brew_bin=$(which brew) 2>&1 > /dev/null
if [[ $? != 0 ]]; then
  action "installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if [[ $? != 0 ]]; then
    error "unable to install homebrew, script $0 abort!"
    exit 2
  fi
  
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew analytics off
else
  ok
  bot "Homebrew"
  action "updating homebrew..."
  brew update
  ok "homebrew updated"
  action "upgrading brew packages..."
  brew upgrade
  ok "brews upgraded"
fi

# Just to avoid a potential bug
mkdir -p ~/Library/Caches/Homebrew/Formula
brew doctor

# install bundle and bundles
brew tap homebrew/bundle
brew bundle --file $HOME/.dotfiles/brew/Brewfile
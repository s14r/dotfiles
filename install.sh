#!/usr/bin/env bash
set -e

source $HOME/.dotfiles/lib/output.sh

################################################################
bot "ensuring build/install tools are available"
if ! xcode-select --print-path &> /dev/null; then

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until the XCode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? ' XCode Command Line Tools Installed'

    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'

fi

# Brew
$HOME/.dotfiles/tooling/brew/install.sh

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# zsh
$HOME/.dotfiles/tooling/zsh/install.sh

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/tooling/zsh/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
rm -rf $HOME/.mackup.cfg
ln -s $HOME/.dotfiles/tooling/mackup/.mackup.cfg $HOME/.mackup.cfg

# use mackup to get our config
mackup restore

# Set default apps for file types
source $HOME/.dotfiles/tooling/macos/setup-file-defaults.sh

# Setup system config
source $HOME/.dotfiles/tooling/macos/setup-macos.sh
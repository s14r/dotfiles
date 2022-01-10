#!/usr/bin/env bash

source $HOME/.dotfiles/lib/output.sh

###############################################################################
bot "Keyboard Scheme"
###############################################################################

running "Copying 'No Dead Keys Schema'"
sudo copy -R "$HOME/.dotfiles/macos/bundles/German No Deadkeys.bundle" "/Library/Keyboard Layouts/"
ok
bot "You need to change the keyboard schema manually :("
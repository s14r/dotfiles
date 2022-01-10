#!/usr/bin/env bash
source $HOME/.dotfiles/lib/output.sh

# install via brew
bot "installing zsh"
brew install zsh
ok

# set zsh as the user login shell
bot "setting newer homebrew zsh (/opt/homebrew/bin/zsh) as your shell (password required)"
sudo bash -c 'echo "/opt/homebrew/bin/zsh" >> /etc/shells'
# chsh -s /usr/local/bin/zsh
sudo dscl . -change /Users/$USER UserShell $SHELL /opt/homebrew/bin/zsh > /dev/null 2>&1
ok

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# antigen configuration framework https://github.com/zsh-users/antigen
bot "installing Antigen"
curl -L git.io/antigen > antigen.zsh
ok


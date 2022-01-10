#!/usr/bin/env bash
source $HOME/.dotfiles/lib/output.sh

# install via brew
bot "installing zsh"
brew install zsh
ok

# set zsh as the user login shell
CURRENTSHELL=$(dscl . -read /Users/$USER UserShell | awk '{print $2}')
if [[ "$CURRENTSHELL" != "/usr/local/bin/zsh" ]]; then
  bot "setting newer homebrew zsh (/usr/local/bin/zsh) as your shell (password required)"
  # sudo bash -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
  # chsh -s /usr/local/bin/zsh
  sudo dscl . -change /Users/$USER UserShell $SHELL /usr/local/bin/zsh > /dev/null 2>&1
  ok
fi

# antigen configuration framework https://github.com/zsh-users/antigen
bot "installing Antigen"
curl -L git.io/antigen > antigen.zsh
ok


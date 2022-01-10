#!/usr/bin/env zsh

# Load Antigen
source $HOME/antigen.zsh

# Autocompleter
antigen bundle Aloxaf/fzf-tab

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

antigen bundle git
antigen bundle macos
antigen bundle z
antigen bundle docker-compose
antigen bundle docker
antigen bundle kubectl
antigen bundle jsontools
antigen bundle terraform
antigen bundle common-aliases

# GCLOUD
CLOUDSDK_HOME=$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
antigen bundle gcloud

# NVM support
NVM_HOMEBREW=$(brew --prefix)/nvm
NVM_AUTOLOAD=1
antigen bundle nvm

antigen theme romkatv/powerlevel10k


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

# done
antigen apply

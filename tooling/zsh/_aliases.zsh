#!/usr/bin/env zsh

alias pss="python -m SimpleHTTPServer"
alias ..="cd .."
alias ...="cd ../../"

# Gcloud
alias gcca="gcloud config configurations activate"
alias gccl="gcloud config configurations list"

# DOCKER
alias dk="docker"
alias dc="docker-compose"
alias deti="docker exec -it"
dkstop() { docker stop $(docker ps -aq); }

# Docker Compose
alias dce="dc exec"
alias dcup="dc up -d && dc logs -f"
alias dcupb="dc up -d --build && dc logs -f"
alias dcupbnc="dc build --no-cache && dcup"

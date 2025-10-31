#!/usr/bin/env zsh

alias pss="python -m SimpleHTTPServer"
alias ..="cd .."
alias ...="cd ../../"

# Gcloud
alias gcca="gcloud config configurations activate"
alias gccl="gcloud config configurations list"

# DOCKER
alias dk="docker"
alias dc="docker compose"
alias deti="docker exec -it"
dkstop() { docker stop $(docker ps -aq); }
dkprune() {
    docker rm -vf $(docker ps -aq)
    docker rmi -f $(docker images -aq)
    docker volume rm $(docker volume ls -q)
    docker system prune -a --volumes
}

dkprunev() {
    docker rm -vf $(docker ps -aq)
    docker volume rm $(docker volume ls -q)
}

# Docker Compose
alias dce="dc exec"
alias dcup="dc up -d && dc logs -f"
alias dcupb="dc up -d --build && dc logs -f"
alias dcupbnc="dc build --no-cache && dcup"
alias ds="docker-sync"

# podman
alias peti="podman exec -it"
pmstop() { podman stop $(podman ps -aq); }
alias pm="podman"
alias pc="podman compose"
pmprune() {
    podman rm -vf $(podman ps -aq)
    podman rmi -f $(podman images -aq)
    podman volume rm $(podman volume ls -q)
    podman system prune -a --volumes
}

# Devbox
alias devbox="~/devbox/vftool/build/vftool -k ~/devbox/kernel -i ~/devbox/initrd -d ~/devbox/disk.img -m 4096 -a \"root=/dev/vda console=hvc0\" -t 0"

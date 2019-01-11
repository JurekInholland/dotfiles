
. ~/.bash_aliases # source self

# Aliases to quickly setup a new debian based VM/server
alias update="sudo apt update && sudo apt upgrade"
alias inst="sudo apt install -y"
alias uninst="sudo apt remove -y"
alias instessentials="inst git, wget, htop, nano"
alias instdocker="wget -qO- https://get.docker.com/ | sh && sudo usermod -aG docker $(whoami) && instdcp"
alias reloadcfg="source ~/.bash_aliases"
alias editcfg="sudo nano ~/.bash_aliases"
alias myaliases="cat ~/.bash_aliases"


# Docker commands
alias dps="docker ps"
alias dtest="docker run --rm -it"

# Docker-compose
alias dcu="docker-compose down && docker-compose up -d"
alias dcd="docker-compose down --remove-orphans"
alias dcl="docker-compose logs -f -t"

des() { docker exec -it "$1" sh; } # Docker exec shell

instdcp() {
    sudo apt-get install -y jq # Install dependency
    VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)
    DESTINATION=/usr/local/bin/docker-compose
    sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION
    sudo chmod +x $DESTINATION
}
# https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly#install-docker-and-docker-compose-within-wsl

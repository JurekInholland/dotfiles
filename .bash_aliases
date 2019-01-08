# Aliases to quickly setup a new debian based VM/server
alias update="sudo apt update && sudo apt upgrade"
alias inst="sudo apt install -y"
alias uninst="sudo apt remove -y"
alias instessentials="inst git, wget, htop, nano"
alias instdocker="wget -qO- https://get.docker.com/ | sh && sudo usermod -aG docker $(whoami)"
alias reloadcfg="source ~/.bash_aliases"
alias editcfg="sudo nano ~/.bash_aliases"
alias myaliases="cat ~/.bash_aliases"

# https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly#install-docker-and-docker-compose-within-wsl
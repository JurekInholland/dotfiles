# Aliases to quickly setup a new debian based VM/server
alias update="sudo apt update && sudo apt upgrade"
alias inst="sudo apt install -y"
alias uninst="sudo apt remove -y"
alias instessentials="inst git, wget, htop, nano"
alias instdocker="wget -qO https://get.docker.com/ | sh"
alias myaliases="cat ~/.bash_aliases"
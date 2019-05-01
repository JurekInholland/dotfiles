if [[ ! -f ~/.zr/init.zsh ]] || [[ ~/.zshrc -nt ~/.zr/init.zsh ]]; then
  zr load \
    sorin-ionescu/prezto/modules/git/alias.zsh \
    frmendes/geometry \
    sorin-ionescu/prezto/modules/history/init.zsh \
    zdharma/fast-syntax-highlighting \
    molovo/tipz \
    ael-code/zsh-colored-man-pages \
    zsh-users/zsh-autosuggestions \
    zpm-zsh/dircolors-material \
    zpm-zsh/ls \
    zpm-zsh/colors \
    desyncr/auto-ls \
    webyneter/docker-aliases \
    jurekInholland/dotfiles \
fi
source ~/.zr/init.zsh
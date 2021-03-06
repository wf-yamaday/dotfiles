#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "run brew upgrade..."

brew upgrade --all

formulas=(
    git
    wget
    curl
    tree
    openssl
    colordiff
    zsh
    zsh-completions
    cask
    ansible
    peco
    hub
    tig
    nodebrew
    python3
    mysql@5.7
    ricty
    sqlite
    markdown
    ctags
    ssh-copy-id
    tmux
    direnv
    gibo
    go
    elixir
    imagemagick
    exa
    bat
)

"brew tap..."
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew tap homebrew/apache
brew tap sanemat/font

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    google-chrome
    slack
    karabiner-elements
    homebrew/cask-versions/sequel-pro-nightly
    visual-studio-code
    docker
    alfred
    alacritty
    macdown
    virtualbox
    vagrant
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew cask install $cask
done

brew cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END


#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
    tig
    sqlite
    markdown
    ssh-copy-id
    tmux
    direnv
    gibo
    imagemagick
    asdf
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
    karabiner-elements
    homebrew/cask-versions/sequel-pro-nightly
    visual-studio-code
    docker
    alfred
    alacritty
    macdown
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew install --cask $cask
done

brew cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END


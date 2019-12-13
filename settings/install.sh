#!/bin/bash

DOTPATH=~/dotfiles/settings

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# make symbolic link
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -fs "$DOTPATH/$f" "$HOME"/"$f"
done

# vscode setting.json
ln -fs "$DOTPATH/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
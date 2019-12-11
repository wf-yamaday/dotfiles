#!/bin/zsh

DOTPATH=~/dotfiles/settings

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -fs "$DOTPATH/$f" "$HOME"/"$f"
done

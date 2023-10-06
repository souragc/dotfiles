#!/bin/bash

cp ./fonts/* ~/.local/share/fonts/
fc-cache -f -v

cp ./starship.toml ~/.config/starship.toml

cp -r nvim ~/.config/
cp .tmux.conf ~/.tmux.conf
cp -r ./alacritty ~/.config/
cp -r ./i3 ~/.config/i3

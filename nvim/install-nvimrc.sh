#!/usr/bin/env sh

# Symlinks the config and bootstraps vim-plug
mkdir -p /home/$USER/.config/nvim
ln -s $(pwd)/init.vim /home/$USER/.config/nvim/
$(pwd)/bootstrap-vim-plug.sh

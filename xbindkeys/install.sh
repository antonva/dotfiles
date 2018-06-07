#!/usr/bin/sh

echo "[::] Creating symlink from $PWD/xbindkeysrc to $HOME/.xbindkeysrc"
ln -s $PWD/xbindkeysrc $HOME/.xbindkeysrc

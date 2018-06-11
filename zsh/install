#!/usr/bin/sh

echo "[::] Making sure that $HOME/.zsh exists..."
[ ! -d $HOME/.zsh ] && mkdir $HOME/.zsh

echo "[::] Creating symlink from $PWD/zshrcf to $HOME/.zshrc"
ln -s $PWD/zshrc $HOME/.zshrc

for f in *.zsh; do
	echo "[::] Creating symlink from $PWD/$f to $HOME/.local/bin/$f"
	ln -s $PWD/$f $HOME/.zsh/$f
done

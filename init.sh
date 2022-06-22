#!/bin/esh

brew install fd fzf rg tmux git neovim

ln -sfv $PWD/.gitconfig ~
ln -sfv $PWD/.globalgitignore ~
ln -sfv $PWD/.tmux.conf ~
ln -sfv $PWD/.config ~
ln -sfv $PWD/.zshrc ~

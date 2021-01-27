#!/bin/esh

brew install fd fzf rg tmux git vim

ln -sfv $PWD/.gitconfig ~
ln -sfv $PWD/.globalgitignore ~
ln -sfv $PWD/.tmux.conf ~
ln -sfv $PWD/.vim ~
ln -sfv $PWD/.zshrc ~

#!/bin/sh

# Setup links to .dotfiles
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/oh-my-zsh/ ~/.oh-my-zsh
ln -s ~/.dotfiles/dircolors-solarized/dircolors.256dark ~/.dir_colors
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/git-completion.bash ~/.git-completion.bash
ln -s ~/.dotfiles/screenrc ~/.screenrc
ln -s ~/.dotfiles/byobu ~/.byobu
ln -s ~/.dotfiles/curlrc ~/.curlrc
ln -s ~/.dotfiles/puppet-lint.rc ~/.puppet-lint.rc

# Make Library visible
chflags nohidden ~/Library/

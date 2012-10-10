This repository holds my configuration files so that I can clone them to other machines
easily.

##Installation:

    git clone git://github.com/splummer/dotfiles.git ~/.dotfiles
	
## Updating

    cd ~/.dotfiles
    git pull
    git submodule init
    git submodule update
    

## zsh
For zsh configuration create the following symlink:

	ln -s ~/.dotfiles/zshrc ~/.zshrc
			
## Vim
For Vim configuration and use, create the following symlinks:

    ln -s ~/.dotfiles/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim ~/.vim

Vim's backup and swap files are stored in `~/.tmp`, so that directory must exist. To be sure run:

    mkdir ~/.tmp

Recipe for cloning Vim configuration to a machine, including git submodule init and update for
Vim bundles:

    cd ~
    git clone http://github.com/zan5hin/dotfiles.git ~/.dotfiles
    ln -s ~/.dotfiles/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim ~/.vim
    mkdir ~/.tmp
    cd ~/.dotfiles
    git submodule init
    git submodule update

Upgrade a single Vim bundle:

    cd ~/.dotfiles/vim/bundle/vim-fugitive
    git pull origin master

Upgrade all Vim bundles:

    cd ~/.dotfiles
    git submodule init
    git submodule update

## bash
For those machines where zsh isn't installed or won't easily work, create the
following symlinks:

    ln -s ~/.dotfiles/bash_profile ~/.bash_profile
    ln -s ~/.dotfiles/bashrc ~/.bashrc
    ln -s ~/.dotfiles/bash_aliases ~/.bash_aliases

## Git
For Git configuration and global ignore files, create these symlinks:

    ln -s ~/.dotfiles/gitconfig ~/.gitconfig
    ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global


## Sublime Text 2 (subl)
For Sublime Text 2 settings remove the following directories from 
`~/Library/Application Support/Sublime Text 2`:

    Installed Packages
    Packages
    Pristine Packages

Then add these symlinks:

    cd ~/Library/Application\ Support/Sublime\ Text\ 2
    ln -s ~/.dotfiles/Sublime\ Text\ 2/Installed\ Packages ./Installed\ Packages
    ln -s ~/.dotfiles/Sublime\ Text\ 2/Packages ./Packages
    ln -s ~/.dotfiles/Sublime\ Text\ 2/Pristine\ Packages ./Pristine\ Packages

Finally, to enable the hidden command line tool `subl` add this symlink:

    ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

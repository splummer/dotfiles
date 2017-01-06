This repository holds my configuration files so that I can clone them to other machines
easily.

##Installation:

    git clone git@github.com:splummer/dotfiles.git
	
## Updating

    cd ~/.dotfiles
    git pull
    git submodule init
    git submodule update
  

## zsh
For zsh configuration create the following symlink:

	ln -s ~/.dotfiles/zshrc ~/.zshrc
    ln -s ~/.dotfiles/oh-my-zsh/ ~/.oh-my-zsh
    ln -s ~/.dotfiles/dircolors-solarized/dircolors.256dark ~/.dir_colors
			
## Vim
For Vim configuration and use, create the following symlinks:

    ln -s ~/.dotfiles/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim ~/.vim

Recipe for cloning Vim configuration to a machine, including git submodule init and update for
Vim bundles:

    cd ~
    git clone http://github.com/zan5hin/dotfiles.git ~/.dotfiles
    ln -s ~/.dotfiles/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim ~/.vim
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
    ln -s ~/.dotfiles/dircolors-solarized/dircolors.256dark ~/.dir_colors

## Git
For Git configuration and global ignore files, create these symlinks:

    ln -s ~/.dotfiles/gitconfig ~/.gitconfig
    ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global
    ln -s ~/.dotfiles/git-completion.bash ~/.git-completion.bash

## Other stuff

    ln -s ~/.dotfiles/screenrc ~/.screenrc
    ln -s ~/.dotfiles/byobu ~/.byobu
    ln -s ~/.dotfiles/curlrc ~/.curlrc



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

## Other Tips, Tricks, and Miscellany

Much of what I did was copied from the following sources

  * https://github.com/zan5hin/dotfiles
  * http://seanmmcdaniel.com/2011/09/zsh-on-os-x/
  * [SSH-Agent screen fix](http://old.tamasrepus.hotnudiegirls.com/pages/GNU+screen+and+SSH+agent+forwarding)
  * [And Another Screen SSH-Agent Fix](http://www.deadman.org/sshscreen.php)

### Fonts

  * https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts

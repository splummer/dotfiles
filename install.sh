#!/bin/sh

# add some taps
brew tap caskroom/fonts

# Install some command lines tools
brew install coreutils
brew install python3
brew install git
brew install libdvdcss

# some fonts
brew cask install font-inconsolata
brew cask install font-source-code-pro

# cask apps
brew cask install vlc
brew cask install dropbox
brew cask install cakebrew
brew cask install bartender
brew cask install slack
brew cask install firefox
brew cask install skype
brew cask install iterm2
brew cask install alfred
brew cask install google-chrome
brew cask install google-drive
brew cask install dash
brew cask install the-unarchiver
brew cask install 1password
brew cask install paparazzi
brew cask install cleanmymac
brew cask install cheatsheet
brew cask install daisydisk
brew cask install kindle
brew cask install tower
brew cask install hipchat
brew cask install xquartz
brew cask install istat-menus
brew cask install mailplane
brew cask install rocket
brew cask install track-o-bot
brew cask install visual-studio-code
brew cask install handbrake
brew cask install rcdefaultapp

# some quicklook plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
brew cask install suspicious-package

# Some Services
brew cask install wordservice

# some pip stuff
pip3 install virtualenv
pip3 install virtualenvwrapper
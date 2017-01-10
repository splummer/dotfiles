#!/bin/sh

# add some taps
brew tap caskroom/fonts

# Install some command lines tools
brew install coreutils
brew install python3
brew install git
brew install libdvdcss
brew install mas

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
brew cask install vuescan

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

# use mas to install apps from the Mac AppStore
mas install ColorWell
mas install Mactracker
mas install Moom
mas install Todoist
mas install Pages
mas install Deliveries
mas install Numbers
mas install Paprika\ Recipe\ Manager
mas install Microsoft\ Remote\ Desktop
mas install Keynote
mas install iMovie
mas install Fantastical\ 2
mas install Patterns
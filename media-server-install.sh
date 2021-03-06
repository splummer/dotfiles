#!/bin/sh

# add some taps
brew tap caskroom/fonts

# Install some command lines tools
brew install coreutils
brew install python3
brew install git
brew install libdvdcss
brew install handbrake
brew install ffmpeg
brew install mkvtoolnix
brew install mp4v2
brew install mplayer
brew install mas

# some fonts
brew cask install font-inconsolata
brew cask install font-source-code-pro

brew cask install handbrake
brew cask install vlc
brew cask install utorrent
brew cask install plex-media-server
brew cask install sonarr
brew cask install sabnzbd
brew cask install couchpotato
brew cask install alfred
brew cask install istat-menus
brew cask install makemkv
brew cask install 1password
brew cask install the-unarchiver
brew cask install macpar-deluxe
brew cask install visual-studio-code

# finally install Don Melton's Transcoding scripts
# https://github.com/donmelton/video_transcoding
sudo gem install video_transcoding
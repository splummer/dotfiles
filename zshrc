# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx macports yum)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Path additions
# List items in the reverse order you want them to appear in $PATH (i.e. last
# items appear first ).
PATH=/usr/X11/bin:$PATH     # X11 Stuff
PATH=/opt/local/bin:$PATH   # MacPorts
PATH=/opt/local/sbin:$PATH  # MacPorts
PATH=/usr/local/sbin:$PATH  # User binaries
PATH=/usr/local/bin:$PATH   # User binaries
PATH=$PATH:/usr/sbin        # System sbin
PATH=$PATH:/sbin		    # User binaries
PATH=$HOME/bin:$PATH        # Personal binaries
PATH=/opt/local/libexec/gnubin:$PATH	# MacPorts gnu coreutils links
PATH=/usr/local/git/bin:$PATH	# Git Binaries from official git project

export PATH

export EDITOR=vim # Set editor to vim for things that care
export PAGER=less # Less is better than more

# Color listing
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# -------------------------------------------------------------------
# source my aliases and functions
# -------------------------------------------------------------------
source ${HOME}/.dotfiles/aliases.zsh
source ${HOME}/.dotfiles/functions.zsh

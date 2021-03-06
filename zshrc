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


# -------------------------------------------------------------------
# Set virtualenv to always use distribute.
# -------------------------------------------------------------------
PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
#VIRTUALENV_PYTHON=/usr/local/opt/pyenv/shims/python
#VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/pyenv/shims/python


# If you use the default PYENV_ROOT they are removed with every brew upgrade
# The pyenv plugin forces it to use brew home which is bad.
PYENV_ROOT=~/.pyenv
export PYENV_ROOT
eval "$(pyenv init - zsh)"

pyenv virtualenvwrapper

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx systemadmin yum git virtualenv zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# -------------------------------------------------------------------
# Path additions
# List items in the reverse order you want them to appear in $PATH (i.e. last
# items appear first ).
# -------------------------------------------------------------------
PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH	# Postgresapp binaries
PATH=/usr/X11/bin:$PATH     # X11 Stuff
PATH=/usr/local/sbin:$PATH  # User binaries
PATH=/usr/local/bin:$PATH   # User binaries
PATH=/usr/local/bin:$PATH   # pyenv shims
PATH=$PATH:/usr/sbin        # System sbin
PATH=$PATH:/sbin		    # User binaries
PATH=$HOME/bin:$PATH        # Personal binaries
PATH=/usr/local/lib/ruby/gems/2.7.0/bin:$PATH # ruby gem install path from brew-gem 'brew gem install <gemname>'
PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH	# brew gnu coreutils links


export PATH

# -------------------------------------------------------------------
# MANPATH
# -------------------------------------------------------------------
MANPATH=/Applications/Postgres.app/Contents/Versions/latest/share/man:$MANPATH

export MANPATH

# -------------------------------------------------------------------
# source my aliases and functions
# -------------------------------------------------------------------
source ${HOME}/.dotfiles/aliases.zsh
source ${HOME}/.dotfiles/functions.zsh

export EDITOR=vim # Set editor to vim for things that care
export PAGER=less # Less is better than more


# Color listing
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# -------------------------------------------------------------------
# Color man pages:
# -------------------------------------------------------------------
export LESS_TERMCAP_mb=$'\E[01;31m'      # begin blinking
export LESS_TERMCAP_md=$'\E[01;31m'      # begin bold
export LESS_TERMCAP_me=$'\E[0m'          # end mode
export LESS_TERMCAP_se=$'\E[0m'          # end standout-mode
export LESS_TERMCAP_so=$'\E[01;44;33m'   # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'          # end underline
export LESS_TERMCAP_us=$'\E[01;32m'      # begin underline


### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

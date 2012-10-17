# -------------------------------------------------------------------
# .bashrc
#
# The individual per-interactive-shell startup file
# -------------------------------------------------------------------

# -------------------------------------------------------------------
# Source global definitions and my aliases file
# -------------------------------------------------------------------
# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# source my aliases file
if [ -f .bash_aliases ]; then
	. .bash_aliases
fi

# -------------------------------------------------------------------
# stuff for bash-completion and git-completion
# -------------------------------------------------------------------
if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
fi

if [ -f /usr/local/etc/git-completion.bash ]; then
  source /usr/local/etc/git-completion.bash
fi

if [ -f ~/.dotfiles/git-completion.bash ]; then
  source ~/.dotfiles/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=1

# -------------------------------------------------------------------
# Prompts
# -------------------------------------------------------------------
# set prompt: user@host working directory new line $ using colors (copied from cygwin profile)
# also set title to user@host and display current directory

PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\H \[\e[33m\]\w\[\e[0m\] $(__git_ps1 "(%s)") \n$\[\033]0;\u@\h:\w\007\] '

# configure how history works
HISTCONTROL=ignoredups                         		# ignore the line if it matches previous line
HISTFILESIZE=20000                             		# size of the history file cf. also shopt -s histappend
HISTSIZE=1000                                  		# size of the run-time history list
HISTIGNORE=ls:ll:la:l:cd:pwd:exit:mc:su:df:clear 	# do not put these in history file

# -------------------------------------------------------------------
# Color
# -------------------------------------------------------------------
# add colors to terminal (see man ls for details)
CLICOLOR=1
# Order:
# 1. directory, 2. symbolic link, 3. socket, 4. pipe, 5. executable, 6. block special, 7. character special
# 8. executabel with setuid bit set, 9. executable with setgid bit set, 10. directory writable to others, with sticky bit
# 11. directory writable to others, without sticky bit
#
# Colors
# a - black, b - red, c - green, d - brown (yellow), e - blue, f - magenta, g - cyan, h - light grey
# A - Bold black, B - Bold red, C - Bold green, D - Bold brown (yellow), E - Bold blue, F - Bold Magenta, G - Bold cyan,
# H - Bold light grey (appears bright white), x - default color
LSCOLORS=gxFxCxDxBxegedabagacad
eval `dircolors ~/.dir_colors`

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


# -------------------------------------------------------------------
# Set some general preferences
# -------------------------------------------------------------------
export EDITOR=vi
export VISUAL=vim
export PAGER=/usr/bin/less

# -------------------------------------------------------------------
# Functions
# -------------------------------------------------------------------
command_exists () {
    type -P "$1" &> /dev/null ;
}
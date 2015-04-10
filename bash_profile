# -------------------------------------------------------------------
# .bash_profile
#
# This file is executed for all interactive shells, i.e., ones you
# log into directly. It may be that some console applications
# (Terminal) execute this for all new tabs or instances.
# -------------------------------------------------------------------

# -------------------------------------------------------------------
# Set some variables that may be useful
# -------------------------------------------------------------------
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  SESSION_TYPE=remote/ssh
else
  case $(ps -o comm= -p $PPID) in
    sshd|*/sshd) SESSION_TYPE=remote/ssh;;
  esac
fi

# -------------------------------------------------------------------
# Build a PATH environment variable
# the lower it is the earlier in the path it is
# -------------------------------------------------------------------

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH="~/bin:${PATH}"
fi

# set PATH so it includes /usr/sbin if it exists
if [ -d /usr/sbin ] ; then
	PATH="/usr/sbin:${PATH}"
fi

# set PATH so it includes /sbin if it exists
if [ -d /sbin ] ; then
	PATH="/sbin:${PATH}"
fi

# set PATH so it includes /usr/local/sbin if it exists
if [ -d /usr/local/sbin ] ; then
	PATH="/usr/local/sbin:${PATH}"
fi

# set PATH so it includes /usr/local/bin if it exists
if [ -d /usr/local/bin ] ; then
	PATH="/usr/local/bin:${PATH}"
fi

# set PATH so it includes /opt/local/bin if it exists
if [ -d /opt/local/bin ] ; then
	PATH="/opt/local/bin:${PATH}"
fi

# set PATH so it includes /opt/local/sbin if it exists
if [ -d /opt/local/sbin ] ; then
	PATH="/opt/local/sbin:${PATH}"
fi

# set PATH so it includes /opt/local/libexec/gnubin if it exists
if [ -d /opt/local/libexec/gnubin ] ; then
	PATH="/opt/local/libexec/gnubin:${PATH}"
fi

# -------------------------------------------------------------------
# Source my bashrc file
# -------------------------------------------------------------------

# get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# -------------------------------------------------------------------
# Launch screen or byobu if they are available and we are on a remote session
# -------------------------------------------------------------------

#if [ "$SESSION_TYPE"=="remote/ssh" ] && command_exists byobu-launcher ; then
#        case "$-" in *i*) byobu-launcher && exit 0; esac;
#fi

#if [ "$SESSION_TYPE"=="remote/ssh" ] && command_exists screen && [ "$TERM"!="screen" ] && [ -f ~/.dotfiles/bin/scratch ]; then
#        ~/.dotfiles/bin/scratch
#fi

#HOSTNAME=$(hostname)
#if [ "${HOSTNAME:0:6}" == "tools." ]; then
#	case "$-" in *i*) byobu-launcher && exit 0; esac;
#fi

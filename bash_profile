# -------------------------------------------------------------------
# .bash_profile
#
# This file is executed for all interactive shells, i.e., ones you
# log into directly. It may be that some console applications
# (Terminal) execute this for all new tabs or instances.
# -------------------------------------------------------------------

# -------------------------------------------------------------------
# Print System Status
# -------------------------------------------------------------------
printf "System Status:\n"; uptime; printf "\n"

# -------------------------------------------------------------------
# Source my bashrc file
# -------------------------------------------------------------------

# get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# -------------------------------------------------------------------
# Build a PATH environment variable
# -------------------------------------------------------------------

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH="~/bin:${PATH}"
fi

# set PATH so it includes /usr/local/bin if it exists
if [ -d /usr/local/bin ] ; then
	PATH="/usr/local/bin:${PATH}"
fi

# set PATH so it includes /usr/local/sbin if it exists
if [ -d /usr/local/sbin ] ; then
	PATH="/usr/local/sbin:${PATH}"
fi
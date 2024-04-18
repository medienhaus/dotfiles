# ~/.bash_profile: executed by bash(1) for login shells.

# set umask
umask 022

# set locales
export LANG="de_DE.UTF-8"
#export LC_ADDRESS="de_DE.UTF-8"
export LC_COLLATE="C"
#export LC_CTYPE="de_DE.UTF-8"
#export LC_IDENTIFICATION="de_DE.UTF-8"
#export LC_MEASUREMENT="de_DE.UTF-8"
export LC_MESSAGES="C"
#export LC_MONETARY="de_DE.UTF-8"
#export LC_NAME="de_DE.UTF-8"
#export LC_NUMERIC="de_DE.UTF-8"
#export LC_PAPER="de_DE.UTF-8"
#export LC_TELEPHONE="de_DE.UTF-8"
export LC_TIME="C"

# set LESS_TERMCAP_*
export LESS_TERMCAP_mb=$'\033[01;31m'     # blink mode
export LESS_TERMCAP_md=$'\033[01;31m'     # bold mode
export LESS_TERMCAP_me=$'\033[0m'         # end mode
export LESS_TERMCAP_so=$'\033[01;44;33m'  # standout
export LESS_TERMCAP_se=$'\033[0m'         # end standout
export LESS_TERMCAP_us=$'\033[01;32m'     # underline
export LESS_TERMCAP_ue=$'\033[0m'         # end underline

# set PATH
if [[ "$(uname -s)" = "Linux" ]]; then
  if [[ "$(id -u)" -eq "0" ]]; then
    export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
  else
    export PATH="/usr/local/bin:/usr/bin:/bin"
  fi
fi

# source system-wide /etc/bashrc
if [[ "$PS1" ]]; then
  if [[ "$BASH" ]] && [[ "$BASH" != "/bin/sh" ]]; then
    PS1='\h:\w\$ '
    if [[ -r "/etc/bash.bashrc" ]]; then
      source "/etc/bash.bashrc"
    elif [[ -r "/etc/bashrc" ]]; then
      source "/etc/bashrc"
    fi
  else
    if [[ "$(id -u)" -eq "0" ]]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

# source /etc/profile.d/* scripts
if [[ "$(uname -s)" = "Linux" ]]; then
  if [[ -d "/etc/profile.d" ]]; then
    for script in "/etc/profile.d/"*.sh; do
      if [[ -r "$script" ]]; then
        source "$script"
      fi
    done
  fi
fi

# set history environment variables
export HISTCONTROL="ignoreboth:erasedups"
export HISTFILESIZE="10000"
export HISTIGNORE="cd:ls:pwd:reboot:shutdown"
export HISTSIZE="10000"

# set less environment variables
export LESSHISTFILE="-"

# add $HOME/bin to PATH
if [[ -d "$HOME/bin" ]]; then
  PATH="$HOME/bin:$PATH"
fi

# set EDITOR and VISUAL
if command -v nvim >/dev/null; then
  export EDITOR="$(command -v nvim)"
  export VISUAL="$(command -v nvim)"
elif command -v vim >/dev/null; then
  export EDITOR="$(command -v vim)"
  export VISUAL="$(command -v vim)"
fi

# source $HOME/.bashrc
if [[ "$BASH" ]] && [[ "$BASH" != "/bin/sh" ]]; then
  if [[ -r "$HOME/.bashrc" ]]; then
    source "$HOME/.bashrc"
  fi
fi

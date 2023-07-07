# ~/.bashrc: executed by bash(1) for non-login shells.

# if not running interactively, don't do anything
if [[ -z "$PS1" ]]; then
  return
fi

# enable vi editing-mode
#set -o vi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# enable extended pattern-matching features
shopt -s extglob

# expand aliases
shopt -s expand_aliases

# append to the history file, don't overwrite it
shopt -s histappend

# attempt hostname expansion when @ is at the beginning of a word
shopt -s hostcomplete

# don't search for completions on an empty line
shopt -s no_empty_cmd_completion

# set variable identifying the chroot you work in (used in prompt below)
#if [[ -z "${debian_chroot:-}" ]] && [[ -r "/etc/debian_chroot" ]]; then
#  debian_chroot="$(cat /etc/debian_chroot)"
#fi
#
#if [[ -r "/etc/debian_version" ]]; then
#  ...
#fi
#
#PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '

# set color prompt according to local/remote and root/user
if [[ -z "$SSH_CLIENT" ]] && [[ -z "$SSH_CONNECTION" ]] && [[ -z "$SSH_TTY" ]]; then
  if [[ "$(whoami)" = "root" ]]; then
    PS1='\[$RED\]\u\[$BLACK\]@\[$BLACK\]\h\[$nocolor\] \[$white\]\w\[$nocolor\] \[$BLACK\]>>\[$nocolor\] '
  else
    PS1='\[$BLACK\]\u\[$BLACK\]@\[$BLACK\]\h\[$nocolor\] \[$white\]\w\[$nocolor\] \[$BLACK\]>>\[$nocolor\] '
  fi
else
  if [[ "$(whoami)" = "root" ]]; then
    PS1='\[$RED\]\u\[$BLACK\]@\[$BLACK\]\h\[$nocolor\] \[$white\]\w\[$nocolor\] \[$BLACK\]\$\[$nocolor\] '
  else
    PS1='\[$BLACK\]\u\[$BLACK\]@\[$BLACK\]\h\[$nocolor\] \[$white\]\w\[$nocolor\] \[$BLACK\]\$\[$nocolor\] '
  fi
fi

# aliases
if [[ -r "$HOME/.bash_aliases" ]]; then
  source "$HOME/.bash_aliases"
fi

# colors
if [[ -r "$HOME/.bash_colors" ]]; then
  source "$HOME/.bash_colors"
fi

# functions
if [[ -r "$HOME/.bash_functions" ]]; then
  source "$HOME/.bash_functions"
fi

# enable programmable completion features
#if [[ "$(uname -s)" = "Linux" ]]; then
#  if [[ -r "/usr/share/bash-completion/bash_completion" ]]; then
#    source "/usr/share/bash-completion/bash_completion"
#  elif [[ -r "/etc/bash_completion" ]]; then
#    source "/etc/bash_completion"
#  fi
#fi

# make less more friendly for non-text input files, see lesspipe(1)
#if [[ -x "/usr/bin/lesspipe" ]]; then
#  eval "$(lesspipe)"
#fi

# bash
if [[ -r "$HOME/.bash_profile" ]]; then
  alias reload='source "$HOME/.bash_profile" && clear'
fi

# cd
alias cd..="cd ../"
alias cd...="cd ../../"
alias cd....="cd ../../../"

# config/dotfiles via git
if [[ -d "$HOME/dotfiles" ]]; then
  alias config='git --git-dir="$HOME/dotfiles/" --work-tree="$HOME"'
fi

# enable colors for ls and grep
if [[ $TERM != "dumb" ]]; then
  if command -v dircolors >/dev/null; then
    if [[ -r "$HOME/.dircolors" ]]; then
      eval "$(dircolors -b "$HOME/.dircolors")"
    else
      eval "$(dircolors -b)"
    fi
    alias ls="ls --color=auto -v"
    alias grep="grep --color=auto"
    alias egrep="egrep --color=auto"
    alias fgrep="fgrep --color=auto"
  fi
fi

# visual bell
alias beep='sleep 3 && echo "*beep*"'

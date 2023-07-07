# ~/.bash_logout: executed by bash(1) when login shell exits.

# clear the console screen and buffer
if [[ "$SHLVL" = "1" ]]; then
  if command -v clear_console >/dev/null; then
    clear_console -q
  fi
fi

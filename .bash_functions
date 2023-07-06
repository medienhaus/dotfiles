# defuse fork bomb :(){ :|:& };:
#:() { true; }; readonly -f :

# f - find recursively in the current directory
# usage: f <keyword>
if command -v find >/dev/null; then
  f() {
    find . -iname "*$1*"
  }
fi

# fixpermissions - chmod 755 $DIRECTORY && chmod 644 $FILE
# usage: fixpermissions <path>
if command -v find >/dev/null; then
  fixpermissions() {
    if [[ -z "$1" ]]; then
      find . -type d -exec chmod 755 {} +
      find . -type f -exec chmod 644 {} +
    else
      find "$1" -type d -exec chmod 755 {} +
      find "$1" -type f -exec chmod 644 {} +
    fi
  }
fi

# mkcd - create directory and cd into it
# usage: mkcd <dirname>
mkcd() {
  mkdir "$1" && cd "$1"
}

# nopaste - paste/upload to the null pointer
# infos: https://git.0x0.st/mia/0x0
# usage: nopaste <filename>
if command -v curl >/dev/null; then
  nopaste() {
    # cat "$1" | curl -F'file=@-' -Fexpires=1 -Fsecret= https://0x0.st
    curl -F'file=@-' -Fexpires=1 -Fsecret= https://0x0.st < "$1"
  }
fi

# nospaces - replace spaces with underscores
# usage: nospaces <path>
if command -v find >/dev/null; then
  nospaces() {
    if [[ -z "$1" ]]; then
      find . -depth -name "* *" -exec bash -c 'for f; do dir="${f%/*}" base="${f##*/}"; if [[ ! -e "$dir/${base// /_}" ]]; then mv "$f" "$dir/${base// /_}"; else echo "$dir/${base// /_} already exists..."; fi; done' _ {} +
    else
      find "$1" -depth -name "* *" -exec bash -c 'for f; do dir="${f%/*}" base="${f##*/}"; if [[ ! -e "$dir/${base// /_}" ]]; then mv "$f" "$dir/${base// /_}"; else echo "$dir/${base// /_} already exists..."; fi; done' _ {} +
    fi
  }
fi

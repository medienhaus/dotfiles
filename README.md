# medienhaus/ remote dev environment

The medienhaus/ remote dev environment configures **Bash** and **Vim**; to install:

```
git clone --bare https://github.com/medienhaus/dotfiles.git $HOME/dotfiles && \
git init --separate-git-dir=$HOME/dotfiles && \
git checkout
```

You might want to install [**fzf**](https://github.com/junegunn/fzf/), a general-purpose command-line fuzzy finder, which is conditionally configured for **Bash** to search through history via `Ctrl-r`, and **Vim** to find and open files via `Space-ff`.

```
apt install fzf
```

## Vim plugins

Vim **plugins** are defined as submodules in the `.gitmodules` file; to install:

```
git submodule update --init --remote
```
